#include <stdio.h>
#include <stdlib.h>

void callee(int n){
    if(n == 0) return;
    printf("%d (0x%08x)\n", n, (int)&n);
    
    callee(n-1);
    printf("%d (0x%08x)\n", n, (int)&n);
    
}

int main(int argc, char ** argv){
    int n;
    
    if(argc < 2){
        printf("USAGE: %s <integer>\n", argv[0]);
        return 1;
    }
    
    n = atoi(argv[1]);
    
    callee(n);
    return 0;
}
