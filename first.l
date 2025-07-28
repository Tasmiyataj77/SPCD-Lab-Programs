%{
#include<stdio.h>
int v=0,c=0;
%}
%%
[\t\n]+ ;
[aeiouAEIOU]  {v++;}
[âeiouAEIOU]  {c++;}
%%
int main()
{
printf("\n Enter the input\n");
yylex();
printf("number of vowels is %d\n",v);
printf("number of consonants is %d\n",c);
}
int yywrap()
{return 1;
}
