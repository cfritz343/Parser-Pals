grammar Expr;
//start_ : expr (NEWLINE expr)* EOF;
//prog:   (expr NEWLINE)* EOF;
prog: expr(NEWLINE expr)* EOF;
//prog:	expr EOF;
expr:	expr ('*'|'/'|'%') expr
    |	expr ('+'|'-') expr
    |   expr ('='|'+='|'-='|'*='|'/=') expr
    |   expr (',') expr
    |   atom
    |	'(' expr ')'
    |   '[' expr ']'
    |   '"' expr '"'
    |   '\'' expr '\''
    |
    ;
NEWLINE : [\r\n]+ ;//-> skip;
WS : [ \t]+ -> skip;
INT     : [0-9]+;
ID : [a-zA-Z_0-9]+;
FLOAT: INT.INT;
BOOL: 'True'|'False';
atom: INT | ID | FLOAT | BOOL;