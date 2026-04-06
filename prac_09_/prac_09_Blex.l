B. Write a lex program to count number of vowels and consonants in a given
input string

%{
int vowel=0;
int consonant =0;
%}
%%
[a,e,i,o,u,A,E,I,O,U] {vowel++;}
[a-zA-Z] {consonant++;}
%%
int yywrap()
52
E.NO: 2303031050592
{return 1; }
int main()
{
printf("Enterthe string ");
yylex();
printf("Number of vowels are: %d \n", vowel);
printf("Number of consonants are: %d \n", consonant);
return 0;
}
