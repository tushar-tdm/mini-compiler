%{

%}

%%

"int"       {printf("Line no: %d\t%s - keyword\n",yylineno,yytext);};
"double"    {printf("Line no: %d\t%s - keyword\n",yylineno,yytext);};
"struct"    {printf("Line no: %d\t%s - keyword\n",yylineno,yytext);};
"break"     {printf("Line no: %d\t%s - keyword\n",yylineno,yytext);};
"if"        {printf("Line no: %d\t%s - keyword\n",yylineno,yytext);};
"else"      {printf("Line no: %d\t%s - keyword\n",yylineno,yytext);};
"enum"      {printf("Line no: %d\t%s - keyword\n",yylineno,yytext);};
"register"  {printf("Line no: %d\t%s - keyword\n",yylineno,yytext);};
"typedef"   {printf("Line no: %d\t%s - keyword\n",yylineno,yytext);};
"char"      {printf("Line no: %d\t%s - keyword\n",yylineno,yytext);};
"extern"    {printf("Line no: %d\t%s - keyword\n",yylineno,yytext);};
"return"    {printf("Line no: %d\t%s - keyword\n",yylineno,yytext);};
"union"     {printf("Line no: %d\t%s - keyword\n",yylineno,yytext);};
"const"     {printf("Line no: %d\t%s - keyword\n",yylineno,yytext);};
"float"     {printf("Line no: %d\t%s - keyword\n",yylineno,yytext);};
"short"     {printf("Line no: %d\t%s - keyword\n",yylineno,yytext);};
"unsigned"  {printf("Line no: %d\t%s - keyword\n",yylineno,yytext);};
"continue"  {printf("Line no: %d\t%s - keyword\n",yylineno,yytext);};
"for"       {printf("Line no: %d\t%s - keyword\n",yylineno,yytext);};
"signed"    {printf("Line no: %d\t%s - keyword\n",yylineno,yytext);};
"void"      {printf("Line no: %d\t%s - keyword\n",yylineno,yytext);};
"default"   {printf("Line no: %d\t%s - keyword\n",yylineno,yytext);};
"goto"      {printf("Line no: %d\t%s - keyword\n",yylineno,yytext);};
"sizeof"    {printf("Line no: %d\t%s - keyword\n",yylineno,yytext);};
"volatile"  {printf("Line no: %d\t%s - keyword\n",yylineno,yytext);};
"do"        {printf("Line no: %d\t%s - keyword\n",yylineno,yytext);};
"while"     {printf("Line no: %d\t%s - keyword\n",yylineno,yytext);};
"if"        {printf("Line no: %d\t%s - keyword\n",yylineno,yytext);};
"static"    {printf("Line no: %d\t%s - keyword\n",yylineno,yytext);};
"main()"    {printf("Line no: %d\t%s - keyword\n",yylineno,yytext);};

[-32768-32767]{} {printf("%s - Integer Constant\n");};
[0-9]+[\.][0-9]{1-6} {printf("%s - Floating Point Constant\n");};
[0-9]+[\.][0-9]{6-12} {printf("%s - Double\n");};
[0-65535] {printf("%s - Unsigned Integer Constant\n");};
[-2147483648-2147483647] {printf("%s - Long Integer\n");};
[0- 4294967295] {printf("%s - Unsigned Long Integer\n");};


[(_)(a-zA-z0-9){0,31}|(a-zA-Z)(a-zA-z0-9){0,31}] {printf("%s - identifier\n",yytext);};

-?(([0-9]+)|([0-9]*\.[0-9]+)([eE][-+]?[0-9]+)?) {printf("%s - constant\n");};


"++" {printf("Line no: %d\t%s - operator\n",yylineno,yytext);};
"--" {printf("Line no: %d\t%s - operator\n",yylineno,yytext);};
"+" {printf("Line no: %d\t%s - operator\n",yylineno,yytext);};
"-" {printf("Line no: %d\t%s - operator\n",yylineno,yytext);};
"*" {printf("Line no: %d\t%s - operator\n",yylineno,yytext);};
"/" {printf("Line no: %d\t%s - operator\n",yylineno,yytext);};
"%" {printf("Line no: %d\t%s - operator\n",yylineno,yytext);};
"<" {printf("Line no: %d\t%s - operator\n",yylineno,yytext);};
">" {printf("Line no: %d\t%s - operator\n",yylineno,yytext);};
"<=" {printf("Line no: %d\t%s - operator\n",yylineno,yytext);};
">=" {printf("Line no: %d\t%s - operator\n",yylineno,yytext);};
"==" {printf("Line no: %d\t%s - operator\n",yylineno,yytext);};
"!=" {printf("Line no: %d\t%s - operator\n",yylineno,yytext);};
"&&" {printf("Line no: %d\t%s - operator\n",yylineno,yytext);};
"||" {printf("Line no: %d\t%s - operator\n",yylineno,yytext);};
"!" {printf("Line no: %d\t%s - operator\n",yylineno,yytext);};
"&" {printf("Line no: %d\t%s - operator\n",yylineno,yytext);};
"|" {printf("Line no: %d\t%s - operator\n",yylineno,yytext);};
"<<" {printf("Line no: %d\t%s - operator\n",yylineno,yytext);};
">>" {printf("Line no: %d\t%s - operator\n",yylineno,yytext);};
"~" {printf("Line no: %d\t%s - operator\n",yylineno,yytext);};
"^" {printf("Line no: %d\t%s - operator\n",yylineno,yytext);};
"=" {printf("Line no: %d\t%s - operator\n",yylineno,yytext);};
"+=" {printf("Line no: %d\t%s - operator\n",yylineno,yytext);};
"-=" {printf("Line no: %d\t%s - operator\n",yylineno,yytext);};
"*=" {printf("Line no: %d\t%s - operator\n",yylineno,yytext);};
"/=" {printf("Line no: %d\t%s - operator\n",yylineno,yytext);};
"%=" {printf("Line no: %d\t%s - operator\n",yylineno,yytext);};

[\n] yylineno++;
%%

void yywrap(){}

int main(){
    //preprocessor and single and multi line comments
    return 0; 
}