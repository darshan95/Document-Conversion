/* Added by Roja 25-10-11 */
/* Moving 'repha' to the right place. In WX notation it is 'r'  */
/*   Logic is moving repha before full character.		*/ 
/*   EX::  ग  is there. repha is moved before ग as shown ::  र्ग	*/
/* Moving  'Z' to the right place.				*/
/*   Logic is moving before full character like ग to get ग़	*/


%{
#include <string.h>
char str[1000],str1[1000], *s1;
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


Wyaq{5}Zq{5}					{	printf("rWya");			}
wwaq{5}Zq{5}					{	printf("rwwa");			}
Gyaq{5}Zq{5}					{	printf("rGya");			}
Xvaq{5}Zq{5}					{	printf("rXva");			}
Xva_Aq{5}Zq{5}					{	printf("rXvA");			}
wwAq{5}Zq{5}					{	printf("rwwA");			}

[A-Yb-z]a_[A-Ya-pr-z]q{5}Zq{5}			{	yyleng=strcspn(yytext, "q");
		                        	        strncpy(str,yytext,yyleng);
                		                	str[yyleng]='\0';
	
	        		                        printf("r%s", str);  		}


[A-Yb-z]a_[A-Yb-pr-z]aq{5}Zq{5}		  	{       yyleng=strcspn(yytext, "q");
                                                        strncpy(str,yytext,yyleng);
                                                        str[yyleng]='\0';

                                                        printf("r%s", str);             }


[A-Yb-z]a_[A-Ya-pr-z]Mq{5}Zq{5}			{       yyleng=strcspn(yytext, "q");
                                                        strncpy(str,yytext,yyleng);
                                                        str[yyleng]='\0';

                                                        printf("r%s", str);     /* प्रकार्यों  */      } 


[A-Yb-z]a[A-Yb-pr-z][ai]Mq{5}Zq{5}              {    yyleng=strcspn(yytext, "a");
                                                        strncpy(str,yytext,yyleng);
                                                        str[yyleng]='\0';

							yytext=strchr(yytext,'a')+1;
							yyleng=strcspn(yytext, "q");
                                                        strncpy(str1,yytext,yyleng);
                                                        str1[yyleng]='\0';

                                                        printf("%sar%s", str,str1);       /* सर्वंखल्विंद   */    } 

[A-Yb-z]a[A-Yb-pr-z][ai]q{5}Zq{5}              {     yyleng=strcspn(yytext, "a");
                                                        strncpy(str,yytext,yyleng);
                                                        str[yyleng]='\0';

                                                        yytext=strchr(yytext,'a')+1;
                                                        yyleng=strcspn(yytext, "q");
                                                        strncpy(str1,yytext,yyleng);
                                                        str1[yyleng]='\0';

                                                        printf("%sar%s", str,str1);       /*    */    }


[A-Yb-pr-z]aq{5}Zq{5}				{	printf("r%ca",yytext[0]);       }


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

                                                        printf("Z%s", str);	}

[A-Ya-ps-z]raq{5}Zq{5}M				{	yyleng=strcspn(yytext, "q");
                                                        strncpy(str,yytext,yyleng);
                                                        str[yyleng]='\0';

                                                        printf("r%sM", str);   /*  अंतर्ग्रंथित     */  }

a_[aeiouq]_ra   				{	yytext=strchr(yytext, '_')+1;
					                yyleng=strcspn(yytext, "_");
					                strncpy(str,yytext,yyleng);
					                str[yyleng]='\0';
					                printf("a_ra_%s", str); /* Moving '_ra' before matras /qzork = ध्रुवता */  }       

%%
