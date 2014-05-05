/* Added by Roja 25-10-11 */
/* Moving  Anusvara to the right place. In WX notation it is 'M'				*/
/* If the character before Anusvara is full character then Anusvara movement should not be done */
/* Else logic is moving Anusvara(M) to the immediate matra.        				*/

%{
#include <string.h>
char *s1,*s2,  str[1000];
int len;
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


aM_ra						{	printf("raM"); /* gaM_ra becomes graM */}


M_[aAeEiIqQoOuU]				{	s1=strchr(yytext, '_')+1;
							printf("_%sM", s1);	/* moving 'M' after the matras */	}


M[B-DF-HJ-NPR-TV-Zb-df-hj-npr-tv-z]*[aeiouqAEIOUQ]	{	s1=strchr(yytext, 'M')+1;
								printf("%sM", s1); //स्प्रिंग
						}

q{5}Mq{5}[A-LN-Za-hj-z]*i			{	s1=strchr(yytext, 'M')+1;
							s2=strchr(s1, 'q')+5;
							len=strcspn(s2, "i");
							strncpy(str, s2, len); str[len]='\0';
							printf("%siM", str); /* Ex: v¯yn  :: aliMxa
										Ex: os¯LVxgkml :: vestiMgahAusa */	}

[aeiouqAEIOUQ]M					{	printf("%s", yytext); /* संश्लिष्ट  */	}


aM_[aAeEiIqQoOuU] 				{	s1=strchr(yytext, '_')+1;
                                                        printf("%sM", s1);     /* moving 'M' after the matras and dropping a_*/       					     }

a_						{	}
%%
