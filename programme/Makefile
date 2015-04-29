LEX = flex
YACC = bison
CC = gcc

all: parser

parser: lex.yy.c grammar.tab.c
	$(CC) -o parser grammar.tab.c lex.yy.c

lex.yy.c: scanner.l grammar.tab.c
	$(LEX) scanner.l

grammar.tab.c: grammar.y
	$(YACC) -d grammar.y

clean:
	rm -f grammar.tab.* lex.yy.c parser
