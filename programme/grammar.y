%{ 

#include <stdio.h>

%}

// Tokens from homework 4
%token		/* Keywords */ PROGRAM, VAR, INTEGER, ARRAY,  OF, REAL, BOOLEAN, _BEGIN, /* BEGIN is already a builtin keyword */ WHILE, DO, IF, THEN, ELSE, END, FOR, TO, DOWNTO, CONST, READ, WRITE, DIV, MOD, AND, OR, TRUE, FALSE, NOT, 
                /* Special symbols */ SEMICOLON, COMMA, ASSIGNMENT, COLON, LEFT_SQUARE_BRACKET, RIGHT_SQUARE_BRACKET, DOT_DOT, DOT, LEFT_BRACKET, RIGHT_BRACKET, STAR, SLASH, PLUS, MINUS, UNEQUAL, LESS_THAN, GREATER_THAN, GREATER_EQUAL_THAN, LESS_EQUAL_THAN, EQUAL, STRING, 
                /* Numbers */ NUMBER, 
                /* Identifiers */ ID

%start	        start

%%

// Grammar from homework 4
start                   : PROGRAM ID SEMICOLON varDec DOT
                        ;

varDec 		        : VAR varDecList 
		        | /* ε */
                        ;

varDecList              : varDecList identListType SEMICOLON 
                        | identListType SEMICOLON
                        ;

identListType           : identList COLON type
                        ;
 
identList               : identList COMMA ID 
                        | ID
                        ;
		 
type                    : simpleType
                        | ARRAY LEFT_SQUARE_BRACKET NUMBER DOT_DOT NUMBER RIGHT_SQUARE_BRACKET OF simpleType
                        ;
 
simpleType	        : INTEGER
                        | REAL
                        | BOOLEAN
                        ;
 
compStmt	        : BEGIN stmtList END
                        ;

stmtList                : stmtList SEMICOLON statement 
                        | statement
                        ;
 
statement	        : assignStmt
		        | compStmt
		        | ifStmt
		        | whileStmt
		        | forStmt
		        | READ LEFT_BRACKET exprList RIGHT_BRACKET
		        | WRITE LEFT_BRACKET exprList RIGHT_BRACKET
                        ;

assignStmt              : ID ASSIGNMENT expr 
                        | ID LEFT_SQUATE_BRACKET expr RIGHT_SQUARE_BRACKET ASSIGNMENT expr
                        ;
 
ifStmt		        : IF expr THEN statement LEFT_SQUARE_BRACKET elsePart RIGHT_SQUARE_BRACKET
                        ;
 
elsePart	        : ELSE statement
                        ;
 
whileStmt	        : WHILE expr DO statement
                        ;
 
forStmt		        : FOR ID ASSIGNMENT expr toPart expr DO statement
                        ;
 
toPart		        : TO
		        | DOWNTO
                        ;
 
expr                    : simpleExpr relOp simpleExpr
                        | simpleExpr
                        ;

exprList                : exprList COMMA expr 
                        | expr
                        ;


simpleExpr              : simpleExpr addOp term 
                        | term
                        ;

term                    : term mulOp factor 
                        | factor
                        ;

factor		        : NUMBER
		        | FALSE
		        | TRUE
		        | IDENT
                        | IDENT LEFT_SQUARE_BRACKET expr RIGHT_SQUARE_BRACKET	
		        | NOT factor
		        | MINUS factor
		        | LEFT_BRACKET expr RIGHT_BRACKET
		        | STRING
                        ;
 		        
relOp		        : LESS_THAN
		        | LESS_EQUAL_THAN
		        | GREATER_THAN
		        | GREATER_EQUAL_THAN
		        | EQUAL
		        | UNEQUAL
                        ;
 		        
addOp		        : PLUS
		        | MINUS
		        | OR
                        ;
 		        
mulOp		        : STAR
		        | SLASH
		        | DIV
		        | MOD
		        | AND
                        ;

%%

main() {
    return yyparse();
}

int yyerror(char *s) {
    fprintf(stderr, "%s\n", s);
    return 0;
}

