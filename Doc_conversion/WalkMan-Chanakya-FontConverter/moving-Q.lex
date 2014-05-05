/* Added by Roja 25-10-11 */
/* Changing i(.*)Q to iQ(.*) and o(.*)Q to oQ(.*) */
/* osQ as oQs to give  के */ 

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

o[A-PR-Za-hj-np-y\+\`@Ñ\~]*Q	{	yytext=strchr(yytext,'o')+1;
         	                 	yyleng=strcspn(yytext, "Q");
	                                strncpy(str, yytext, yyleng);
        	                        str[yyleng]='\0';

                	                printf("oQ%s", str); //Changing o(.*)Q to oQ(.*)
                        	}

o[A-PR-Za-hj-np-y\+\`@Ñ\~]*zQ   {       yytext=strchr(yytext,'o')+1;
                                        yyleng=strcspn(yytext, "z");
                                        strncpy(str, yytext, yyleng);
                                        str[yyleng]='\0';

                                        printf("oQz%s", str); //Changing o(.*)Q to oQ(.*) Ex: LowzQ&xst 
                                }


i[A-HJ-PR-Za-np-z\+\`@Ñ]*Q {       yytext=strchr(yytext,'i')+1;    
                                yyleng=strcspn(yytext, "Q");
                                strncpy(str, yytext, yyleng);
                                str[yyleng]='\0';

                                printf("iQ%s", str); //Changing i(.*)Q to iQ(.*)  ex: izkÑfrd@o`Qf=ke
                        } 

Ok[A-NPR-Za-np-y\+\`@Ñ\~]*Q       {       yytext=strchr(yytext,'k')+1;
                                        yyleng=strcspn(yytext, "Q");
                                        strncpy(str, yytext, yyleng);
                                        str[yyleng]='\0';

                                        printf("OkQ%s", str); //Changing o(.*)Q to oQ(.*)
                                }

Ik[A-HJ-Za-hj-z\+\`@Ñ]*Q {       yytext=strchr(yytext,'k')+1;
                                yyleng=strcspn(yytext, "Q");
                                strncpy(str, yytext, yyleng);
                                str[yyleng]='\0';

                                printf("IkQ%s", str); //Changing i(.*)Q to iQ(.*)  ex: izkÑfrd@o`Qf=ke
                        }

I\+k[A-HJ-Za-hj-z\`@Ñ]*Q {      yytext=strchr(yytext,'k')+1;
                                yyleng=strcspn(yytext, "Q");
                                strncpy(str, yytext, yyleng);
                                str[yyleng]='\0';

                                printf("IkQ+%s", str); //Changing i(.*)Q to iQ(.*)  ex: izkÑfrd@o`Qf=ke
                        }

%%
