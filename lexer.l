%{
#include <iostream>
using namespace std;
%}

%% 
"//"       { while(yyinput() != '\n') {} } // Ignore single-line comments
program { cout << "PROGRAM" << endl;}
function { cout << "FUNCTION" << endl;}
procedure { cout << "PROCEDURE" << endl;}
integer  { cout << "INTEGER" << endl;}
double   {cout << "DOUBLE" << endl;}
String  {cout << "STRING" << endl;}
":=" { cout << "ASSIGNMENT" << endl;}
"+" { cout << "PLUS" << endl; }
"-" { cout << "MINUS" << endl; }
"*" { cout << "TIMES" << endl;}
"%" { cout << "MODULUS" << endl;}
"++" { cout << "INCREMENT" << endl;}
"&&" { cout << "AND" << endl;}
"||" { cout << "OR" << endl;}
"!" { cout << "NOT" << endl;} 
"<=" { cout << "LESS THAN EQUAL TO" << endl;}
"<" { cout << "LESS THAN" << endl;}
"=>" { cout << "GREATER THAN EQUAL TO" << endl;}
">" { cout << "GREATER THAN" << endl;}
"=" { cout << "EQUAL" << endl;}
"==" { cout << "DOUBLE EQUALS" << endl;}
"!=" { cout << "NOT EQUAL" << endl;}
"," { cout << "COMMA" << endl;}
"(" {cout << "LEFT PARENTHESIS" << endl;}
")" {cout << "RIGHT PARENTHESIS" << endl;}
"{" {cout << "OPENING BRACE" << endl;}
"}" {cout << "CLOSING BRACE" << endl;}
if      { cout << "IF" << endl; }
then { cout << "THEN" << endl;}
else    { cout << "ELSE" << endl; }
while { cout << "WHILE" << endl; }
do { cout << "DO" << endl;} 
return { cout << "RETURN" << endl;}


";" { cout << "SEMICOLON" << endl;}
[a-zA-Z_][a-zA-Z0-9_]*\[\] { cout << "ARRAY DECLARATION: " << yytext << endl; }
[a-zA-Z_][a-zA-Z0-9_]* { cout << "IDENTIFIER: " << yytext << endl; }
[0-9]+  { cout << "NUMBER: " << yytext << endl; }
\"[^\"\n]*\" { cout << "STRING: " << yytext << endl; }
.       { /* Ignore all other characters */ }

%%

int main() {
    yylex(); // Start lexical analysis
    return 0;
}
