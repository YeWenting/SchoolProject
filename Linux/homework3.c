#include <unistd.h>
#include <stdio.h>
#include <fcntl.h>

int main(void)
{
    int inFile, outFile, pfd[2];
    pipe(pfd);
    if (fork() > 0)
    {
        close(pfd[0]);
        inFile = open("/etc/passwd", O_RDONLY);
        dup2(inFile, 0);
        close(inFile);
        dup2(pfd[1], 1);
        close(pfd[1]);
        execlp("grep", "grep", "-v", "usr", 0);
    }
    else
    {
        close(pfd[1]);
        outFile = open("result.txt", O_CREAT | O_WRONLY | O_TRUNC, 666);
        dup2(outFile, 1);
        close(outFile);
        dup2(pfd[0], 0);
        close(pfd[0]);
        execlp("wc", "wc", "-l", 0);
    }

    return 0;
}
