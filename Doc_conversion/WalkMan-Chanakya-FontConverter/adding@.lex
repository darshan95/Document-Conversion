/*Programme to add '@' for xml tags to avoid converting into utf8 */
/*Suggested by Chaitanya sir */
 
alpha_numeric [A-Za-z0-9]
non_alpha_numeric [^>]
%x within_html 
%%

\<					{ ECHO; BEGIN within_html; 	}

<within_html>{alpha_numeric}+		{ printf("@");  ECHO; 	}

<within_html>{non_alpha_numeric}	{ ECHO; 	}

<within_html>\>				{ ECHO; BEGIN INITIAL;  	}

%%
