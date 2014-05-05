/* Added by Roja 25-10-11 */
/* Mapping Kruitidev to Wx notation */

%{
#include <string.h>
char str[1000], *s1;
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


nzZ	{ printf("rxra");	}
®	{ printf("jF");	}
¬	{ printf("zZ");	}
ª	{ printf("wr");	}
°	{ printf("_q");	}
²	{ printf("fwaO");	}
´	{ printf("eVA");	}
¥	{ ECHO;  /* printing same symbol as its UNKNOWN*/	}
·	{ printf("*");	}
¹	{ printf("[");	}
º	{ printf("]");	}
»	{ printf("%%");	}
¼	{ printf("xXa");	}
½	{ printf("q");	}
¿	{ printf(".Y");	}
Â	{ printf("nna");	}
Æ	{ printf("L");	}
À	{ printf("j");	}
Á	{ printf("n~e");	}
Ç	{ printf("y");	}
È	{ printf("hla");	}
É	{ printf("hna");	}
Ê	{ printf("hNa");	}
Ë	{ printf("wra");	}
Ì	{ printf("Q");	}
Í	{ printf("q");	}
Î	{ printf("Q");	}
Ï	{ printf("swa");	}
Ð	{ printf("swra");	}
Ñ	{ printf("kq");	}
Ò	{ printf("~o");	}
Ó	{ printf("~p");	}
Ô	{ printf("~;");	}
Õ	{ printf(";~");	}
Ö	{ printf(">~");	}
×	{ printf("F");	}
Ø	{ printf("kra");	}
Ù	{ printf("ww");	}
Ú	{ printf("Pra");	}
Û	{ printf("F");	}
Ü	{ printf("S");	}
Ý	{ printf("P");	}
Þ	{ printf("h");	}
ß	{ printf("hra");	}
à	{ printf("hva");	}
á	{ printf("hya");	}
â	{ printf("hq");	}
ã	{ printf("hma");	}
ä	{ printf("xna");	}
å	{ printf("xga");	}
æ	{ printf("xra");	}
ç	{ printf("pra");	}
é	{ printf("k");	}
ê	{ printf("t");	}
ë	{ printf("T");	}
ì	{ printf("D");	}
í	{ printf("xxa");	}
î	{ printf("M~");	}
ï	{ printf("~d");	}
ð	{ printf("ta");  /* modified this '~V' to 'ta' */	}
ñ	{ printf("eVAo");	}
ò	{ printf("Ta");  /* modified this '~B' to 'Ta' */	}
ó	{ printf("da");	 /* modified this '~M' to 'da' */	}
ô	{ printf("Da");	 /* modified this '~<' to 'Da' */	}
õ	{ printf("~x");	}
ö	{ printf("÷");	}
÷	{ printf("ø");	}
ø	{ printf("ù");	}
ù	{ printf("ú");	}
ú	{ printf("eVAo");	}
û	{ printf("ò");	}
ü	{ printf("ó");	}
ý	{ printf("ô");	}
þ	{ printf("õ");	}
ÿ	{ printf("ö");	}
!	{ printf("!");	}
€	{ printf("lla");	}
‚	{ printf("kca");	}
ƒ	{ printf("fkwa");	}
\„	{ printf("Cva");	}
…	{ printf("fKa");	}
†	{ printf("fGa");	}
‡	{ printf("kva");	}
\ˆ	{ printf("xba");	}
‰	{ printf("xBa");	}
Š	{ printf("lla");	}
‹	{ printf("Rtva");	}
Œ	{ printf("fkRa");	}
Ž	{ printf("Rtva");	}
‘	{ printf("Rta");	}
’	{ printf("RTa");	}
\“	{ printf("_ja");	}
\”	{ printf("jZ");	}
•	{ printf("Ka");	}
–	{ ECHO; /* Modifying 'Kra' to  'ECHO'  Ex: 10–39  */	}
—	{ ECHO; /* Modifying 'Kna' to  'ECHO'             */	}
˜	{ printf("u");	}
™	{ printf("U");	}
›	{ printf("lY");	}
œ	{ printf("xbra");	}
ž	{ printf("lla");	}
Ÿ	{ printf("lY");	}
d\+	{ printf("kZa");	}
[[]\+	{ printf("KZ");	}
x\+	{ printf("gZa");	}
T\+	{ printf("jZ");	}
t\+	{ printf("jZa");	}
M\+	{ printf("dZa");	}
\<\+	{ printf("DZa");	}
;\+	{ printf("yYa");	}
j\+	{ printf("rYa");	}
u\+	{ printf("nYa");	}
\{	{ printf("kR");	}
=	{ printf("wr");	}
«	{ printf("..");	}
\|	{ printf("xya");	}
K	{ printf("jFa");	}
\}	{ printf("xva");	}
J	{ printf("Sra");	}
Vª	{ printf("tra");	}
Mª	{ printf("dra");	}
\<ª	{ printf("Dra");	}
Nª	{ printf("Cra");	}
xz	{ printf("gra");	}
#	{ printf("ru");	}
:	{ printf("rU");	}
v	{ printf("a");	}
b±	{ printf("IM");	}
Ã	{ printf("a");	}
bZ	{ printf("I");	}
b	{ printf("i");	}
m	{ printf("u");	}
Å	{ printf("U");	}
,s	{ printf("E");	}
,	{ printf("e");	}
d	{ printf("ka");	}
D	{ printf("k");	}
[[]	{ printf("K");	}
x	{ printf("ga");	}
X	{ printf("g");	}
Ä	{ printf("fa");	}
\?	{ printf("G");	}
³	{ ECHO; /*printing same symbol as its UNKNOWN */	}
p	{ printf("ca");	}
P	{ printf("c");	}
N	{ printf("Ca");	}
t	{ printf("ja");	}
T	{ printf("j");	}
\>	{ printf("Ja");	}
&gt;	{ printf("Ja");	/* Modifying this rule based on XML tagging . &gt; = > */}
[÷]	{ printf("J");	}
V	{ printf("ta");	}
B	{ printf("Ta");	}
M	{ printf("da");	}
\<	{ printf("Da");	}
&lt;	{ printf("Da");	/* Modifying this rule based on XML tagging . &lt; = < */	}
\.	{ printf("N");	}
r	{ printf("wa");	}
R	{ printf("w");	}
F	{ printf("W");	}
n	{ printf("xa");	}
\/	{ printf("Xa");	}
è	{ printf("X");	}
u	{ printf("na");	}
U	{ printf("n");	}
i	{ printf("pa");	}
I	{ printf("p");	}
c	{ printf("ba");	}
C	{ printf("b");	}
H	{ printf("B");	}
e	{ printf("ma");	}
E	{ printf("m");	}
;	{ printf("ya");	}
j	{ printf("ra");	}
y	{ printf("la");	}
Y	{ printf("l");	}
G	{ printf("lYa");	}
o	{ printf("va");	}
O	{ printf("v");	}
'	{ printf("S");	}
\"	{ printf("R");	}
&quot;	{ printf("R");	/*Modifying " to &quot; for xml purpose */}
&#34;	{ printf("R");	/*Modifying " to &#34; for xml purpose in 12.04 Ubuntu */}
l	{ printf("sa");	}
L	{ printf("s");	}
g	{ printf("ha");	}
z	{ printf("_ra"); //Here _ means preceeding letter 'a' should be removed
	}
\*	{ printf("\'");	/* modified this to normal quote ' */ }
_	{ printf(";");	}
¶	{ printf("\"");	}
¸	{ printf("\"");	}
¾	{ printf("=");	}
¨	{ printf("o");	}
©	{ printf("O");	}
h	{ printf("_I");	}
q	{ printf("_u");	}
w	{ printf("_U");	}
`	{ printf("_q");	}
s	{ printf("_e");	}
¢	{ printf("e");	}
S	{ printf("_E");	}
a	{ printf("M");	}
¡	{ printf("z");	}
%	{ printf("H");	}
W	{ printf("_oY");	}
\~j	{ printf("_ra");	}
\~	{ printf("_");	}
[\\]	{ printf("?"); 	}
\+	{ printf("Z");	}
 ः	{ printf(":");	}
\^	{ printf("\'");/* modified this to normal quote */	}
A	{ printf("|"); 	}
-	{ printf(".");	}
&	{ printf("-"); 	}
&amp;	{ printf("-"); /* Modifying this rule based on XML tagging . &amp; = & */	}
\]	{ printf(",");	}
\~[ ] 	{ printf("_ ");	}
@	{ printf("/");	}
ाे	{ printf("o");	}
ाॅ	{ printf("oY");	}
ंै	{ printf("EM");	}
े्र	{ printf("_re");	}
अौ	{ printf("O");	}
अो	{ printf("o");	}
आॅ	{ printf("oY");	}
f	{ printf("_i");	}
[ ]%	{ printf(":");	}
k	{ printf("_A");	}
Z	{ printf("qqqqqZqqqqq"); 	}
μ	{ printf("-");	}
±       { printf("qqqqqZqqqqqM"); }
£	{ printf("r_i");	}
0       {       printf("0");    }
1       {       printf("1");    }
2       {       printf("2");    }
3       {       printf("3");    }
4       {       printf("4");    }
5       {       printf("5");    }
6       {       printf("6");    }
7       {       printf("7");    }
8       {       printf("8");    }
9       {       printf("9");    }
¯	{	printf("_iqqqqqMqqqqq");/*	}

q{5}[A-Za-pr-z=\+_,.β0-9\(\):~– -]*q{5}  {  yytext=strchr(yytext,'q')+5;
	    	                        yyleng=strcspn(yytext,"q");
                	  	        strncpy(str,yytext,yyleng);
			                str[yyleng]='\0';

                    		        printf("%s", str);    */  }

q{5}[^q@ ]*q{5}		{	s1=strchr(yytext,'q')+5;
                                len=strcspn(s1,"q");
                                strncpy(str, s1, len);
                                str[len]='\0';

                                printf("%s", str);	}

q{5}@[^@a-zA-Z0-9]@q{5}	{ 	s1=strchr(yytext,'@')+1;
	                     	len=strcspn(s1,"@");
		                strncpy(str,s1,len);
        		        str[len]='\0';
	
        	        	printf("%s", str);   /*   added this rule for xml purpose */ }

q{5}@[^@<]*@q{5}	{       s1=strchr(yytext,'@')+1;
              	                len=strcspn(s1,"@");
                                strncpy(str,s1,len);
                                str[len]='\0';

                                printf("@%s", str);    /*  added this rule for xml purpose */ }



[0-9][.][0-9]	{ ECHO; }

[0-9][.]	{ ECHO;	}

[0-9][.][0-9][.][0-9]	{ ECHO;	}

%%
