%{
    struct symbol_table{
        char a[32];
        struct symbol_table *next;
    };
    typedef struct symbol_table st;
%}

%%

"int" {printf("%s - keyword\n",yytext);};
"double" {printf("%s - keyword\n",yytext);};
"struct" {printf("%s - keyword\n",yytext);};
"break" {printf("%s - keyword\n",yytext);};
"if" {printf("%s - keyword\n",yytext);};
"else" {printf("%s - keyword\n",yytext);};
"enum" {printf("%s - keyword\n",yytext);};
"register" {printf("%s - keyword\n",yytext);};
"typedef" {printf("%s - keyword\n",yytext);};
"char" {printf("%s - keyword\n",yytext);};
"extern" {printf("%s - keyword\n",yytext);};
"return" {printf("%s - keyword\n",yytext);};
"union" {printf("%s - keyword\n",yytext);};
"const" {printf("%s - keyword\n",yytext);};
"float" {printf("%s - keyword\n",yytext);};
"short" {printf("%s - keyword\n",yytext);};
"unsigned" {printf("%s - keyword\n",yytext);};
"continue" {printf("%s - keyword\n",yytext);};
"for" {printf("%s - keyword\n",yytext);};
"signed" {printf("%s - keyword\n",yytext);};
"void" {printf("%s - keyword\n",yytext);};
"default" {printf("%s - keyword\n",yytext);};
"goto" {printf("%s - keyword\n",yytext);};
"sizeof" {printf("%s - keyword\n",yytext);};
"volatile" {printf("%s - keyword\n",yytext);};
"do" {printf("%s - keyword\n",yytext);};
"while" {printf("%s - keyword\n",yytext);};
"if" {printf("%s - keyword\n",yytext);};
"static" {printf("%s - keyword\n",yytext);};
"main()" {printf("%s - keyword\n",yytext);};

[(_)(a-zA-z0-9){0,31}|(a-zA-Z)(a-zA-z0-9){0,31}] {printf("%s - identifier\n",yytext);};

-?(([0-9]+)|([0-9]*\.[0-9]+)([eE][-+]?[0-9]+)?) {printf("%s - constant\n");};

"++" {printf("%s - operator\n",yytext);};
"--" {printf("%s - operator\n",yytext);};
"+" {printf("%s - operator\n",yytext);};
"-" {printf("%s - operator\n",yytext);};
"*" {printf("%s - operator\n",yytext);};
"/" {printf("%s - operator\n",yytext);};
"%" {printf("%s - operator\n",yytext);};
"<" {printf("%s - operator\n",yytext);};
">" {printf("%s - operator\n",yytext);};
"<=" {printf("%s - operator\n",yytext);};
">=" {printf("%s - operator\n",yytext);};
"==" {printf("%s - operator\n",yytext);};
"!=" {printf("%s - operator\n",yytext);};
"&&" {printf("%s - operator\n",yytext);};
"||" {printf("%s - operator\n",yytext);};
"!" {printf("%s - operator\n",yytext);};
"&" {printf("%s - operator\n",yytext);};
"|" {printf("%s - operator\n",yytext);};
"<<" {printf("%s - operator\n",yytext);};
">>" {printf("%s - operator\n",yytext);};
"~" {printf("%s - operator\n",yytext);};
"^" {printf("%s - operator\n",yytext);};
"=" {printf("%s - operator\n",yytext);};
"+=" {printf("%s - operator\n",yytext);};
"-=" {printf("%s - operator\n",yytext);};
"*=" {printf("%s - operator\n",yytext);};
"/=" {printf("%s - operator\n",yytext);};
"%=" {printf("%s - operator\n",yytext);};

%%

void yywrap(){}

int main(){
    //preprocessor and operators
    return 0; 
}