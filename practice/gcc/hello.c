#include <stdio.h>

int find(char *str, char *pat){
    int i, j, str_max, pat_max;
    pat_max = (int) strlen(pat);
    str_max = (int) strlen(str) - pat_max;
    for (i = 0; i < str_max; i++) {
        //        for (j = 0; j < pat_max; <#increment#>) {
        //            <#statements#>
        //        }
    }
    
    return -1;
}

int main(int argc, char **argv)
{
    printf("Hello World\n", find("this", "is"));
    printf("Hello World\n", find("this", "IS"));
    return 0;
}


