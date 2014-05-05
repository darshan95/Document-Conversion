/* Added by Roja 25-10-11 */
/* Moving 'ि ' ki matra in right place */
/* Logic is replacing '_i' to the immediate 'a' with the letter 'i'  */

%{
#include <string.h>
char str[1000], str1[1000];
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


a_i[b-hj-zA-Z\_]*a   {   yytext=strchr(yytext,'i')+1;
                   	 yyleng=strcspn(yytext, "a");
                    	 strncpy(str,yytext,yyleng);
	                 str[yyleng]='\0';
                    	 printf("a%si", str);
                     }


_i[b-hj-zA-Z\_]*a    {   yytext=strchr(yytext,'i')+1;
                    	 yyleng=strcspn(yytext, "a");
                    	 strncpy(str,yytext,yyleng);
                    	 str[yyleng]='\0';
                    	 printf("%si", str);
                     }


_i[b-hj-zA-Z\_]*i    {   yytext=strchr(yytext,'i')+1;
                     	 printf("%si", yytext);
                     }

a_i[b-hj-zA-Z]a_[b-hj-zA-Z]*a	{	yytext=strchr(yytext, 'i')+1;  //पट्टियों      pattiyoM
					yyleng=strcspn(yytext, "a");
		                        strncpy(str,yytext,yyleng);
                			str[yyleng]='\0';
                                        
					yytext=strchr(yytext,'_')+1;
                                        yyleng=strcspn(yytext, "a");
                                        strncpy(str1,yytext,yyleng);
                                        str1[yyleng]='\0';

		                        printf("a%s%si", str,str1);
				}


a_		     {  /* }

qqqqqZqqqqq	     {	printf("r");*/	}


%%
