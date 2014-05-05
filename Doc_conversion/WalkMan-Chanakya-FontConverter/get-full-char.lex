%%

OkQ		{	printf("oQ");	}	

IkQ		{	printf("iQ");	}

&lt;¡k		{	printf("&lt;k¡"); 	}

(o|i|I|'|\"|è|F|[[]|\{|Ù|\.|\?|C|E|H|L|P|T|U|X|Y|\=|”|m)(Z|a)k	{  printf("%c%c%c", yytext[0], yytext[2], yytext[1]);	}

maQ		{	printf("mQa");	}

m¡Q		{	printf("mQ¡");	}

g¡q		{	printf("gq¡");	}

%%
