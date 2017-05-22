#include <time.h>
#include <stdio.h>
#include <stdlib.h>
#define BIG_NUM 1000000000

int a[BIG_NUM];

int main(int argc, char **argv)
{
    FILE *fp;
    int i, epoch;
    time_t start_time, end_time;

    start_time = time(NULL);
    
    for (epoch = 0; epoch < 200; epoch++)
    {
        for (i = 0; i < 100000000; i++)
        {
            a[i] = i;
        }
    }

    end_time = time(NULL);

    if((fp=fopen("1","w")) == NULL)
    {
        fprintf(stderr, "open file error");
        exit(1);
    }

    fprintf(fp, "1 %f\n", (double)(end_time - start_time) / 200);
    fclose(fp);

    return 0;
}
