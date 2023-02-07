%{
#include"stdio.h"
#include"stdlib.h"
int i;

%}
%%
[a-z A-Z]* {

for(i=0;i<=yyleng;i++)
{
if((yytext[i]=='a')&&(yytext[i
+1]=='b')&&(yytext[i+2]=='c'))
{
yytext[i]='A';
yytext[i+1]='B';
yytext[i+2]='C';
}
}
printf("The modified string is %s",yytext);
}
%%
main()
{
printf("Enter the input text");
yylex();
}
int yywrap()
{
return 1;
}
