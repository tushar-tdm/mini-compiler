%{
	#include<stdio.h>
	#include<stdlib.h>
	int cmnt_strt=0;
%}

identifier (_|[a-zA-Z])([a-zA-Z0-9_]){0,31}
%x CMNT
ws  [ \t\r\f\v]+

%%

"#define" {printf("\nLine_no: %d\t%sThis is defintion for a variable \n",yylineno,yytext);}
"#include"[ ]*"<"[^>\n]*">"[.]*\n {printf("\nLine_no: %d\t%s is a preprocessor directive\n",yylineno,yytext);}
"#include"[ ]*"\""[^"\n]*"\""[.]*\n {printf("\nLine_no: %d\t%s is a preprocessor directive\n",yylineno,yytext);}
"#include"[.]*\n {printf("\nLine_no: %d\t%s Invalid preprocessor directive\n",yylineno,yytext);}


"/*"                              {cmnt_strt = yylineno; BEGIN CMNT;}
<CMNT>.|{ws}                      ;
<CMNT>\n                          {yylineno++;}
<CMNT>"*/"                        {BEGIN INITIAL;}
<CMNT>"/*"                        {printf("Line_no: %d\t Nested comments are not valid!\n",yylineno);}
<CMNT><<EOF>>                     {printf("Line_no: %d\tUnterminated comment\n", cmnt_strt); yyterminate();}

[0-9]+[a-zA-z]+ {printf("\nLine_no: %d\tIllegal identifier\n",yylineno);}

\"[^\"\n]*\"     {

  if(yytext[yyleng-2]=='\\') /* check if it was an escaped quote */
  {
    yyless(yyleng-1);       /* push the quote back if it was escaped */
    yymore();
  }
  else
    printf("\nLine_no: %d\t%s is a string\n",yylineno,yytext);
}
\"[^\"\n]*$ {printf("Line %d: Unterminated string %s\n",yylineno,yytext);}

int |
float |
typedef |
char |
const |
union |
unsigned |
double |
while |
for |
register |
volatile |
sizeof |
do |
if |
break |
continue |
void |
switch |
return |
else |
struct |
goto {printf("\nLine_no: %d\t\t%s is a keyword\n",yylineno,yytext);}
main\( {printf("\nLine_no: %d\tMain function:\n\t%s\n",yylineno,yytext);}
\".*\" {printf("\nLine_no: %d\t\t %s is a string",yylineno,yytext);}
{identifier}\( {printf("\nLine_no: %d\tUser defined function:\t%s\n",yylineno,yytext);}
{identifier}(\[[0-9]*\])? { printf("\nLine_no: %d\t %s is an identifier:",yylineno,yytext);}

[0-9]+ {printf("\nLine_no: %d\t%s is a Integer Constant\n",yylineno,yytext);};

\)(\:)? {printf("\n\t");ECHO;printf("\n");}
\( ECHO;
; {printf("\nLine_no: %d\t%s is a semi-colon\n",yylineno,yytext);}

= {printf("\nLine_no: %d\t %s is an assignment operator\n",yylineno,yytext);}
\<= |
\>= |
\< |
== |
\> |
!= { printf("\nLine_no: %d\t\t%s is a relational operator\n",yylineno,yytext);}
\{  {printf("\nLine_no: %d\t %s Indentation\n",yylineno,yytext);}
\}  {printf("\nLine_no: %d\t Indentation %s\n",yylineno,yytext);}
\+ |
\* |
\/ |
\% |
\++ |
\-- |
\+= |
\-= |
\*= |
\/= |
\%= {printf("\nLine_no: %d\t%s is an arithemetic operator\n",yylineno,yytext);}
\&& |
\! |
\& |
\| |
\<< |
\>> |
\~ |
\^ | {printf("\nLine_no: %d\t%s is a comparative operator\n",yylineno,yytext);}

[\n] yylineno++;
%%

int main(int argc, char **argv)
{
    FILE *file;
    file=fopen("input.txt","r");
    if(!file)
    {
    printf("could not open the file");
    exit(0);
    }
    yyin=file;
    yylex();
    printf("\n");
    return(0);
}

int yywrap()
{
    return(1);
}