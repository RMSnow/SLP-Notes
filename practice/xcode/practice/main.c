#include <stdio.h>

void determine(signed int signed_num, unsigned int unsigned_num){
    signed int signed_old_num = signed_num;
    unsigned int unsigned_old_num = unsigned_num;
    
    signed_num = signed_num | 0xffffffff;
    unsigned_num = unsigned_num | 0xffffffff;
    
    if (signed_num < 0) {
        printf("%d is a signed_num\n", signed_old_num);
    }
    
    if (unsigned_num > 0) {
        printf("%d is a unsigned_num\n", unsigned_old_num);
    }
}

int main(int argc, char **argv)
{
    signed int signed_num;
    unsigned int unsigned_num;
    
    /* both is positive */
    signed_num = 10;
    unsigned_num = 20;
    determine(signed_num, unsigned_num);
    
    /* signed integer is negative */
    signed_num = -10;
    determine(signed_num, unsigned_num);
    
    return 0;
}

