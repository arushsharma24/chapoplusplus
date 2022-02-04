/* A sample Flex program that just scans the input lexeme and print the corresponding token (only token name) in the output. As of now nothing is returned to the parser. The necessary return statement is the part of furthur development */

addition agar_saath_ho
subtraction agar_saath_na_ho
multiplication baar
division kum_baar

integer chai
string coffee
trueToken sach
falseToken saanp

for jab_tak_h_jaan
start century_gate
end convocation_hall

%{
%}

%%
([ \t])* {}
[\n] {printf("\n\n");}

{for} { printf("<Keyword: for> ");
}
{start} { printf("<Keyword: start> ");
}
{end} { printf("<Keyword: end>");
}
{integer} { printf("<Keyword: integer> ");
}
{string} { printf("<Keyword: string> ");
}
{trueToken} { printf("<Keyword: trueToken>");
}
{falseToken} { printf("<Keyword: falseToken>");
}
{addition} { printf("<Arithmetic Operator: \'+\'> ");
}
{subtraction} { printf("<Arithmetic Operator: \'-\'> ");
}
{multiplication} { printf("<Arithmetic Operator: \'*\'> ");
}
{division} { printf("<Arithmetic Operator: \'/\'> ");
}

(([a-z]|[A-Z])([a-z]*[A-Z]*[0-9]*[_]*)*) {printf("<Identifier: ");
ECHO;
printf("> ");
}

([0-9]+) {printf("<Number: ");
ECHO;
printf("> ");
}


([\"])(.)*([\"]) {printf("<String Literal: ");
ECHO;
printf("> ");
}

([\'])([a-zA-Z0-9])([\']) {printf("<Character Literal: ");
ECHO;
printf("> ");
}

("=") {printf("<Assignment Operator: \'");
ECHO;
printf("\'> ");
}

(">"|"<"|">="|"<="|"!="|"==") {printf("<Relational Operator: \'");
ECHO;
printf("\'> ");
}

("!"|"||"|"&&") {printf("<Logical Operator: \'");
ECHO;
printf("\'> ");
}

("["|"]"|"{"|"}"|"("|")"|";"|":"|"."|"#") {printf("<Special Symbol: \'");
ECHO;
printf("\'> ");
}
%%

int yywrap(){}

int main(){
  yylex();
  return 0;
}