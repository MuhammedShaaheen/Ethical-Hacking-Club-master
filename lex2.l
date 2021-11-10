digit[0-9]
letter [A-Za-z]
%%
"#include" printf("%s is preprocessor directive \n",yytext);
{digit}+(.{digit}+)? printf("%s is a number\n",yytext);
"int"|"float"|"char"|"void "|"main"|"printf" printf("%s is a keyword\n",yytext);
"+"|"-"|"*"|"/"|"%" printf("%s is a operator\n",yytext);
"("|")"|"{"|"}"|","|";"|"=" printf("%s is a special character\n",yytext);
"<stdlib.h>"|"<stdio.h">|"<conio.h>" printf("%s is a header file\n",yytext);
{letter}+|{letter}{digit}+ printf("%s is identifier \n",yytext);
.;
\n;
%%
int yywrap()
{
return 1;
}
int main(int argc,char *argv[])
{
yyin=fopen(argv[1],"r"); 
yylex();
return 0;
}
