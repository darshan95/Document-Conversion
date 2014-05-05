/* Assuming 'Y' as vowel as it is always used in combination of 'oY' to get ऑ   */
/* Added by Roja 08-08-12 */
/* Moving 'repha' to the right place. In WX notation it is 'r'  */
/* Logic is moving repha between vowel and consonant.           */
/* EX:: अन्तर्दर्शी   repha is moved between त and द as shown ::  तर्द	*/

VOWELS			[aeiouqAEIOUQY]
CONSONANTS		[^aeiouqAEIOUQY ]
%{
#include <string.h>
int len;
char *s, str1[1000];
%}
%x within_word

%%
\<text[^<.*]*\>         {ECHO;}
\<\/text\>              {ECHO;}
\<\?xml[ ]version.*     {ECHO;}
\<!DOCTYPE.*            {ECHO;}
\<pdf2xml\>             {ECHO;}
\<page.*                {ECHO;}
\<fontspec.*            {ECHO;}
\<b\>                   {ECHO;}
\<\/b\>                 {ECHO;}
\<i\>                   {ECHO;}
\<\/i\>                 {ECHO;}
\<\/page\>              {ECHO;}
\<\/pdf2xml\>           {ECHO;}
font\=\"[0-9]*\>	{ECHO;}

{VOWELS}						{ ECHO ;  BEGIN within_word;	}

<within_word>{CONSONANTS}+[aeiouqAEIOUQYM]*q{5}Zq{5}	{ s=yytext; len=0;  
							  len=strcspn(s, "q");
							  strncpy(str1, s, len); str1[len]='\0';
							  s=s+len+5;  //As there are 5 q's
							  if(s[0]=='q')  
							     printf("r%sq",  str1); /*Ex: varn`Zf&quot;V = aMwarxqRti */
							  else
							     printf("r%s",  str1); /* Ex: ÅèokZ/j =  UrXvAXara */ 
                                			}

<within_word>[\n\> ]					{ ECHO; BEGIN INITIAL;}
%%			  
