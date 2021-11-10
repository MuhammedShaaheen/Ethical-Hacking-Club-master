%{
int c=0,d=0,lc=0;
%}
%%
[A-Za-z] c++;
[0-9] d++;
\n lc++;
. ;
%%
int main()
{
yyin=fopen("xy.c","r"); 
yylex();
printf("count is %d\n",c);
printf("num count is %d\n",d);
printf("line count is %d\n",lc);
}
int yywrap()
{
return 1;
}
