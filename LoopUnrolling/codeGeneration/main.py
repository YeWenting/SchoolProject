for i in range(401, 442, 40):
    f = open('test_' + str(i) + '.c', 'w')
    code = """#include <time.h>
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

    for (epoch = 0; epoch < 500; epoch++)
    {
        for (i = 0; i < 100000000; i += """ + str(i) + """)
        {
            """

    for iter in range(i):
        code += 'a[i + ' + str(iter) + '] = i + ' + str(iter) + ';\n'
    code += """\n}\n}

    end_time = time(NULL);

    if((fp=fopen("result","at")) == NULL)
    {
        fprintf(stderr, "open file error");
        exit(1);
    }

    fprintf(fp, \"{""" + str(i) + """, %ld}, ", (end_time - start_time) * 2);

    fclose(fp);

    return 0;
}"""

    f.write(code)