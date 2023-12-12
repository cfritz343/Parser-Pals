grammar Expr;
//start_ : expr (NEWLINE expr)* EOF;
//prog:   (expr NEWLINE)* EOF;
prog: expr(NEWLINE expr)* EOF;
//prog:	expr EOF;

ADD: '+';
SUB: '-';
MULT: '*';
DIV: '/';
MOD: '%';
ADDASGN: '+=';
SUBASGN: '-=';
MULTASGN: '*=';
DIVASGN: '/=';
EQASGN: '=';
IF: 'if';
ELIF: 'elif';
ELSE: 'else';
COLON: ':';
COMMA: ',';
PERIOD: '.';
POUND: '#';
QUOTE: '\'';
LESS: '<';
LEQ: '<=';
GREATER: '>';
GRQ: '>=';
EQ: '==';
NEQ: '!=';
AND: 'and';
OR: 'or';
NOT: 'not';
WHILE: 'while';
FOR: 'for';
IN: 'in';
expr:	expr harop expr
    |	expr larop expr
    |   expr asgnop expr
    |   expr COMMA expr
    |   expr cond  expr
    |   expr COLON expr
    |   expr eqop expr
    |   expr gate expr
    |   whileloop expr
    |   forloop expr
    |   atom expr
    |	'(' expr ')'
    |   '[' expr ']'
    |   '\'' expr '\''
    |   
    |
    |
    ;
NEWLINE : [\r\n]+ ;
WS : [ \t]+ -> skip;
INT     : [0-9]+;
ID : [a-zA-Z_0-9]+;
FLOAT: INT.INT;
STRING: '"' .*? '"';
BOOL: 'True'|'False';
SINGLELINECOM: POUND ~[\r\n]* -> skip;
MULTILINECOM: QUOTE QUOTE QUOTE .*? QUOTE QUOTE QUOTE -> skip;
whileloop: WHILE atom COLON | WHILE expr COLON; 
forloop: FOR atom IN expr COLON;
larop: ADD | SUB;
harop: MULT | DIV | MOD;
asgnop: ADDASGN | SUBASGN | MULTASGN
| DIVASGN | EQASGN;
atom: INT | ID | FLOAT | BOOL | STRING;
cond: IF | ELIF | ELSE;
eqop: LESS | LEQ | GREATER | GRQ
| EQ | NEQ;
gate: AND | OR | NOT;
