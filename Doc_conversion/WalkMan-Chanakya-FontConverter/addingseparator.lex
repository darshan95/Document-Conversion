/** Added by Roja(31-05-12)
Program to add a separator, to distinguish b/w English word and Hindi(Chanakya) word.
Here the separator used is 'qqqqq@' '@qqqqq'
Ex  ::   1.1 
O/p ::   qqqqq@1@qqqqqqqqqq@.@qqqqqqqqqq@1@qqqqq
Run ::   ./addingseparator  <english-text-font-number>  < input-file  > out-file
Ex  ::   If english text as font number 8 then 
            ./addingseparator  8 < HND.xml  > hnd.xml
**/

%{
char *font , *s1, str[1000];
int len;
%}
alpha_numeric [^ ]
%x without_html 
%%

font=\"[0-9]*\"\>				{ ECHO;
						  s1=strchr(yytext, '"')+1;
						  len=strcspn(s1, "\"");
						  strncpy(str, s1, len); str[len]='\0';

  						     if(strcmp(font, str)==0) 
                                                            BEGIN without_html;   
						}

<without_html>{alpha_numeric}			{ printf("qqqqq@"); ECHO; printf("@qqqqq");	}

<without_html>\<\/text\>			{ ECHO; BEGIN INITIAL; 		}

%%

int main(int argc , char* argv[])
{
   font=argv[1];
   yylex();
}
     
