CONSONANTS  [^aeiouqAEIOUQYM]

%%

_A_e		{  printf("_o");	}
_A_E		{  printf("_O");	}


{CONSONANTS}_A	{  printf("%ca", yytext[0]);  	}

oY_A		{  printf("oY"); /*Ex:bysDVªWku */}

A_oY		{  printf("oY");  	}

_AM_e		{  printf("_oM"); 	}

a\<\/(i|b)\>_A_e	{	printf("o</%c>",  yytext[3]);   /*Ex: <i>i+Q</i>ksdl */	}

%% 
