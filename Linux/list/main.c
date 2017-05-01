#include <stdio.h>
#include <dirent.h>
#include <sys/stat.h>
#include <stdlib.h>
#include <sys/time.h>
#include <getopt.h>
#include <ctype.h>
#include <string.h>

static int rflag = 0;
static int aflag = 0;
static int lflag = 0, l_value;
static int hflag = 0, h_value;
static int mflag = 0, m_value;

void print_dir(char *path)
{
    chdir(path);
    DIR *dir = opendir(".");

    const char *str1 = ".", *str2 = "..";
    struct dirent *entry;
    struct stat file_stat;

    while (dir != NULL && (entry = readdir(dir)) != NULL) {
        lstat(entry->d_name, &file_stat);

        if (lflag && file_stat.st_size < l_value)
            continue;
        if (hflag && file_stat.st_size > h_value)
            continue;
        if (mflag && (time(NULL) - file_stat.st_mtime) / (24 * 60 * 60) >= m_value)
            continue;
        if (!aflag && entry->d_name[0] == '.')
            continue;

        printf("%s %lld\n", entry->d_name, file_stat.st_size);

        int test = S_ISDIR(file_stat.st_mode);

        if (rflag && S_ISDIR(file_stat.st_mode) && strcmp(entry->d_name, str1) != 0 && strcmp(entry->d_name, str2) != 0)
        {
            DIR *dir = NULL;
            if (dir = opendir(entry->d_name) != NULL)
            {
                chdir(entry->d_name);
                print_dir(".");
                chdir("../");
            }
        }
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
                l_value = atoi(optarg);
                break;
            case 'h':
                h_value = atoi(optarg);
                break;
            case 'm':
                m_value = atoi(optarg);
                break;
            case '?':
                if (optopt == 'l' || optopt == 'h' || optopt == 'm')
                    fprintf(stderr, "Option -%c requires an argument.\n", optopt);
                else if (isprint(optopt))
                    fprintf(stderr, "Unknown option `-%c'.\n", optopt);
                else
                    fprintf(stderr,
                            "Unknown option character `\\x%x'.\n",
                            optopt);
                return 1;
            default:
                exit(-1);
        }
//
//    rflag = 1;
//
//        struct stat st;
//        char *path = "CMakeFiles/3.6.2/";
//
//        if (0 > stat(path, &st)) {
//            fprintf(stderr, "Usage: don't exist such file %s\n", path);
//            exit(1);
//        }
//
//        if (S_ISDIR(st.st_mode)) {
//            print_dir(path);
//        } else {
//            printf("%s %lld\n", path, st.st_size);
//        }

//    printf ("aflag = %d, bflag = %d, cvalue = %s\n",
//            aflag, bflag, cvalue);


    for (i = optind; i < argc; i++) {
        struct stat st;
        char *path = argv[i];

        if (0 > stat(path, &st)) {
            fprintf(stderr, "Usage: don't exist such file %s\n", path);
            exit(1);
        }

        if (S_ISDIR(st.st_mode)) {
            DIR *dir;
            dir = opendir(path);
            print_dir(dir);
            closedir(dir);
        } else {
            printf("%s %lld\n", path, st.st_size);
        }
    }

    return 0;
}
