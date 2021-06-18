
#include <stdio.h>
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <string.h>

# define TITLE "DECIMAL TO RADIX-i converter"
# define AUTHOR "Name"
# define YEAR "2021"

char* Dec2RadixI(int radix, int decimal){
    char res[]={'0','1','2','3','4','5','6','7','8','9',
                'A','B','C','D','E','F'};
    char* ptr={'\0'};
    int size= (int)log2(decimal);
    int i = 1;            // counter
    char result[size];
    ptr=NULL;
    while(decimal>0){
        result[size-i]=res[decimal%radix];
        ptr=&result[size];
        ptr-=i;
        decimal /=radix;
        i++;
    }
//    for(int i =0 ;i<size;i++){
//        printf("Output at %d is: %c\n",i,result[i]);
//    }
    return ptr;
}
int main()
{
    printf("*****************************\n");
    printf(" %s\n",TITLE);
    printf(" Written by: %s\n",AUTHOR);
    printf(" Date: %s\n",YEAR);
    printf("*****************************\n");
    int decimal_num=0;
    int radix=0;
    double logn=0;
    int divison=0;
    int remainder=0;

    printf("Enter a decimal number: ");
    scanf("%d",&decimal_num);
    printf("The number you have entered is %d\n",decimal_num);

    while(decimal_num>=0){
        printf("Enter a radix for the converter between 2 and 16: ");
        scanf("%d",&radix);
        printf("The radix you have entered is %d\n",radix);

        logn= log2(decimal_num);
        printf("The log2 of the number is %.2lf\n",logn);

        divison=decimal_num/radix;
        printf("The integer result of the number divide by %d is %d\n",radix,divison);

        remainder=decimal_num%radix;
        printf("The remainder is %d\n",remainder);
        char output[]={'\0'};
        strcat(output,Dec2RadixI(radix,decimal_num));

//        for(int i =0 ;i<(sizeof (output)/(sizeof (output[0])));i++){
//            printf("Output at %d is: %s\n",i,output[i]);
//        }
        printf("The radix-%d value is %s\n",radix,output);


        printf("Enter a decimal number: ");
        scanf("%d",&decimal_num);
        output[0]=0;
    }
    printf("EXIT");

    return 0;
}

