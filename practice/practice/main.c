//
//  main.c
//  practice
//
//  Created by 张雪遥 on 01/01/2018.
//  Copyright © 2018 张雪遥. All rights reserved.
//

#include <stdio.h>

void readmail(int a,char **b){
    printf("read: %d, %s\n",a,b);
}

void sendmail(int a,char **b){
    printf("send: %d, %s\n",a,b);
}

int main(int argc, char **argv)
{
//    mail effie liu
//    mail -h -d -f /usr/zhu/mymailbox
    
    for (int i=0; i<argc; i++) {
        printf("%s\n",argv[i]);
    }
    
    if ( argv[argc-1][0] == '-' || (argv[argc-2][1] == 'f' ) )
        readmail(argc, argv);
    else
        sendmail(argc, argv);
    
    return 0;
}
