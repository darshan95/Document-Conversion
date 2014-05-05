/* Added by Roja (05-06-12) */
/* Program to separate English and Hindi Text  */

%{
FILE *fp, *fp1;
%}

sentences [^\n]
%x separator

%%

{sentences}+\<=\>[ ]	{  fprintf(fp, "%s" , yytext); BEGIN separator;	}

<separator>{sentences}+	{  fprintf(fp1, "%s" , yytext); 	}

<separator>\n		{  fprintf(fp, "%s" , yytext); fprintf(fp1, "%s" , yytext); BEGIN INITIAL;	}


%%

int main(int argc, char* argv[])
{
   fp =fopen(argv[1], "w");
   fp1=fopen(argv[2], "w");
  
   yylex();
}
