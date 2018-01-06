//
//  main.c
//  practice
//
//  Created by 张雪遥 on 01/01/2018.
//  Copyright © 2018 张雪遥. All rights reserved.
//

#include <stdio.h>

#define ARRAY_SIZE 10
void natural_numbers (void) {
    int i;
    int array[ARRAY_SIZE];
    
    i = 1;
    while ( i <= ARRAY_SIZE) {
        array[i] = i -1;
        printf("array[%d] = %d\n",i,i-1);
        i = i +1;
    }
    
//    i = 0;
//    while ( i < ARRAY_SIZE + 2) {
//        array[i] = i - 1;
//        printf("array[%d] = %d\n", i, i - 1);
//        i = i + 1;
//    }
}

int main(int argc, char **argv)
{
    natural_numbers();
    return 0;
}
