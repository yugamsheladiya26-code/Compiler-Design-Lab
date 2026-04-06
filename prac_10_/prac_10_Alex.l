A. Write a lex program to print out all numbers from the given file. 

%{
#include<stdio.h>
%}
%%
[0-9] {printf(" %s = %d ",yytext,atoi(yytext));}
. ;
%%
int yywrap() {
return 1;
}
int main() {
extern FILE *yyin; yyin=fopen("basic.txt","r");
yylex();
return 0;
}
