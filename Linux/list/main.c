#include <stdio.h>
#include <dirent.h>
#include <sys/stat.h>
#include <cstdlib>

int main(int argc, char **argv)
{
    struct stat st;
    char *path;

    if (0 > stat(path, &st))
    {
        fprintf(stderr, "Usage: don't exist such file %s\n", path);
        exit(1);
    }

    if (S_ISDIR(st.st_mode))
    {
        DIR *dir;
        dir = opendir(path);
        struct dirent *entry;
        struct stat file_stat;

        while ((entry = readdir(dir)) != NULL)
        {
            lstat(entry->d_name, &file_stat);
            printf("%s %lld\n", entry->d_name, file_stat.st_size);
        }
    }
    else
    {
        printf("%s %lld\n", path, st.st_size);
    }
    return 0;
}
