#include <stdio.h>
#include <dirent.h>
#include <sys/stat.h>
#include <stdlib.h>
#include <sys/time.h>
#include <getopt.h>
#include <string.h>
#define MAX_PATH_LEN 128

static int rflag = 0;
static int aflag = 0;
static int lflag = 0, l_value;
static int hflag = 0, h_value;
static int mflag = 0, m_value;

void print_dir(char path[])
{
    DIR *dir = opendir(path);
    const char *str1 = ".", *str2 = "..";
    struct dirent *entry;
    struct stat file_stat;
    char new_path[MAX_PATH_LEN] = "";

    if (path[strlen(path) - 1] != '/')
        strcat(path, "/");

    while (dir != NULL && (entry = readdir(dir)) != NULL)
    {
        strcpy(new_path, path);
        strcat(new_path, entry->d_name);
        lstat(new_path, &file_stat);

        if (lflag && file_stat.st_size < l_value)
            continue;
        if (hflag && file_stat.st_size > h_value)
            continue;
        if (mflag && (time(NULL) - file_stat.st_mtime) / (24 * 60 * 60) >= m_value)
            continue;
        if (!aflag && entry->d_name[0] == '.')
            continue;

        printf("%s %lld\n", new_path, file_stat.st_size);

        if (rflag && S_ISDIR(file_stat.st_mode) && strcmp(entry->d_name, str1) != 0 && strcmp(entry->d_name, str2) != 0)
            print_dir(new_path);
    }
    closedir(dir);
}

int main(int argc, char **argv) {
    int c, i;

    while ((c = getopt(argc, argv, "arl:h:m:")) != -1)
        switch (c) {
            case 'a':
                aflag = 1;
                break;
            case 'r':
                rflag = 1;
                break;
            case 'l':
                lflag = 1;
                l_value = atoi(optarg);
                break;
            case 'h':
                hflag = 1;
                h_value = atoi(optarg);
                break;
            case 'm':
                mflag = 1;
                m_value = atoi(optarg);
                break;
            default:
                exit(-1);
        }

    /* Default argument */
    if (optind == argc)
    {
        argv[argc] = (char *) malloc(sizeof(char) * 1 + 1);
        strcpy(argv[argc++], ".");
    }

    for (i = optind; i < argc; i++) {
        struct stat st;
        char path[MAX_PATH_LEN];

        strcpy(path, argv[i]);
        if (0 > stat(path, &st)) {
            fprintf(stderr, "Usage: don't exist such file %s\n", path);
            exit(1);
        }

        if (S_ISDIR(st.st_mode)) {
            print_dir(path);
        } else {
            printf("%s %lld\n", path, st.st_size);
        }
    }

    return 0;
}
