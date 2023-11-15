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
LESS: '<';
LEQ: '<=';
GREATER: '>';
GRQ: '>=';
EQ: '==';
NEQ: '!=';
AND: 'and';
OR: 'or';
NOT: 'not';

expr:	expr harop expr
    |	expr larop expr
    |   expr asgnop expr
    |   expr (',') expr
    |   expr cond  expr
    |   expr COLON expr
    |   expr eqop expr
    |   expr gate expr
    |   atom expr
    |	'(' expr ')'
    |   '[' expr ']'
    |   '"' expr '"'
    |   '\'' expr '\''
    |
    |
    ;
NEWLINE : [\r\n]+ ;//-> skip;
WS : [ \t]+ -> skip;
INT     : [0-9]+;
ID : [a-zA-Z_0-9]+;
FLOAT: INT.INT;
BOOL: 'True'|'False';
larop: ADD | SUB;
harop: MULT | DIV | MOD;
asgnop: ADDASGN | SUBASGN | MULTASGN
| DIVASGN | EQASGN;
atom: INT | ID | FLOAT | BOOL;
cond: IF | ELIF | ELSE;
eqop: LESS | LEQ | GREATER | GRQ
| EQ | NEQ;
gate: AND | OR | NOT;