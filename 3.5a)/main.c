#define TITLE "DECIMAL TO RADIX-i converter \n"
#define AUTHOR "Written by: Linda Mafunu \n"
#define YEAR "Date: 2021 \n"
#include <stdint.h>
#include <stdio.h>
#include <math.h>


int convert(int number,int base){
    if(number == 0 || base==10)
        return number;
    return (number % base) + 10*convert(number / base, base);
}

void Dec2RadixI(int number,int base){

    char bases[16] = {'0', '1', '2', '3', '4', '5', '6', '7','8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
    int converted[64];
    int next_digit, index=0;

    /* convert to the indicated base */
    while (number != 0){
        converted[index] = number % base;
        number = number / base;
        ++index;
    }

    /* now print the result in reverse order */
    --index;  /* back up to last entry in the array */
    for(  ; index>=0; index--){ /* go backward through array */
        printf("%c", bases[converted[index]]);
    }
    printf("\n");

}

int main(void){

    printf("******** \n");
    printf(TITLE,"%s");
    printf(AUTHOR,"%s");
    printf(YEAR, "%s");
    printf("******** \n");

    //taking in user input
    int number = 0;
    while (number >= 0){
        printf("Enter a decimal number: ");
        scanf("%d",&number);
        if (number < 0 ){
            printf("EXIT \n");
            break;
        }
        printf("The number you have entered is: %d\n",number);
        //taking in the radix
        int radix;
        printf("Enter a radix for the converter between 2 and 16: ");
        scanf("%d",&radix);
        printf("The radix you have entered is %d\n ",radix);

        printf("The log2 of the number is ");
        printf("%.2f \n",log2(number));

        //parth
        printf("The integer result of the number divided by %d is %d \n",number,number/radix);
        printf("The remainder is %d \n",number%radix);
        printf("The radix-%d value is ",radix);
        Dec2RadixI(number,radix);
    }

}
