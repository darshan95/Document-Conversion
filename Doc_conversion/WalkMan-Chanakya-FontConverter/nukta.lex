/* Added by Roja 25-10-11 */
/* Moving  'Z' to the right place.				*/
/* Logic is moving before full character like ग to get ग़	*/


%{
#include <string.h>
char str[1000];
%}

%%


\<text[^<.*]*\>		{ECHO;}
\<\/text\>		{ECHO;}
\<\?xml[ ]version.*	{ECHO;}
\<!DOCTYPE.*		{ECHO;}
\<pdf2xml\>		{ECHO;}
\<page.*		{ECHO;}
\<fontspec.*		{ECHO;}
\<b\>			{ECHO;}
\<\/b\>			{ECHO;}
\<i\>			{ECHO;}
\<\/i\>			{ECHO;}
\<\/page\>		{ECHO;}
\<\/pdf2xml\>		{ECHO;}





[A-Yb-z]aZ					{	yyleng=strcspn(yytext, "a");
                                                        strncpy(str,yytext,yyleng);
                                                        str[yyleng]='\0';

							printf("%sZa", str);		}

a_ra						{	printf("ra"); /* pa_ra becomes pra. */ 	}


[aeiouAEIOUQ]Z					{	yyleng=strcspn(yytext, "Z");
                                                        strncpy(str,yytext,yyleng);
                                                        str[yyleng]='\0';
		
							printf("Z%s", str);  /* जुड़े */	}


[aeiouAEIOUQ]MZ                                 {       yyleng=strcspn(yytext, "Z");
                                                        strncpy(str,yytext,yyleng);
                                                        str[yyleng]='\0';

                                                        printf("Z%s", str);		} 


a_[aeiouq]_ra   				{	yytext=strchr(yytext, '_')+1;
					                yyleng=strcspn(yytext, "_");
					                strncpy(str,yytext,yyleng);
					                str[yyleng]='\0';
					                printf("a_ra_%s", str); /* Moving '_ra' before matras /qzork = ध्रुवता */  }       

%%
