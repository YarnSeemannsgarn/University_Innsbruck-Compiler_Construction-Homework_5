/* A Bison parser, made by GNU Bison 3.0.2.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2013 Free Software Foundation, Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

#ifndef YY_YY_PARSER_TAB_H_INCLUDED
# define YY_YY_PARSER_TAB_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token type.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    PROGRAM = 258,
    VAR = 259,
    INTEGER = 260,
    ARRAY = 261,
    OF = 262,
    REAL = 263,
    BOOLEAN = 264,
    _BEGIN = 265,
    WHILE = 266,
    DO = 267,
    IF = 268,
    THEN = 269,
    ELSE = 270,
    END = 271,
    FOR = 272,
    TO = 273,
    DOWNTO = 274,
    READ = 275,
    WRITE = 276,
    DIV = 277,
    MOD = 278,
    AND = 279,
    OR = 280,
    TRUE = 281,
    FALSE = 282,
    NOT = 283,
    SEMICOLON = 284,
    COMMA = 285,
    ASSIGNMENT = 286,
    COLON = 287,
    LEFT_SQUARE_BRACKET = 288,
    RIGHT_SQUARE_BRACKET = 289,
    DOT_DOT = 290,
    DOT = 291,
    LEFT_BRACKET = 292,
    RIGHT_BRACKET = 293,
    STAR = 294,
    SLASH = 295,
    PLUS = 296,
    MINUS = 297,
    UNEQUAL = 298,
    LESS_THAN = 299,
    GREATER_THAN = 300,
    GREATER_EQUAL_THAN = 301,
    LESS_EQUAL_THAN = 302,
    EQUAL = 303,
    STRING = 304,
    NUMBER = 305,
    ID = 306
  };
#endif

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;

int yyparse (void);

#endif /* !YY_YY_PARSER_TAB_H_INCLUDED  */
