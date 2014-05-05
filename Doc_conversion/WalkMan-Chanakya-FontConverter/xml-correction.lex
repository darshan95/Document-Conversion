/* Program to handle pdf converter problems */
/* Added by Roja (31-07-12)	*/
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
font\=\"[0-9]*\"\>      {ECHO;}

ssa	{	printf("sa");	/* Ex: efgykvkssa*/ }
sas	{	printf("sa");	}
aa      { 	printf("a");	/* Ex: gSaaA */	    }
I[ ]\+k	{	printf("I+k");	/* Ex: I +kQksVksoksYVh; */	}
D;[ ]k	{	printf("D;k");	/*D; ksafd	*/	}
i\+[ ]Qk	{	printf("i+Qk");	/* i+ QksVkWu	*/	}
=sk	{	printf("s=k");	/*{k=skiQy	*/	}
geass   {       printf("geas"); /* hameM_e */           }
%%
