A. Create a lexer to take input from a text file and count number of
characters, number of lines , number of words

%{
#include<stdio.h>
int word=0;
int line=0;
intspace=0;
int tab=0;
%}
%%
([A-Za-z0-9])+ {word++;}
"\n" {line++;}
([ ])+ {space++;}
"\t " {tab++;}
%%
int main() {
extern FILE *yyin;
yyin=fopen("basic.txt","r");
yylex();
printf("words:%d \n liens :%d \n spaces :%d \n tabs: %d \n ",word,line,space,tab);
return 0;
}
int yywrap()
51
E.NO: 2303031050592
{
return 1;
}