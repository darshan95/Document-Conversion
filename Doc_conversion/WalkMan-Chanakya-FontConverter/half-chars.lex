/* Added by Roja 25-10-11 */
/*  Combining all the halants with 'ा'  to get full character  */
/* Ex:  Fk  gives थ  */
 
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


oQ	{ printf("qqqqqkaqqqqq");	}
iQ\+Z	{ printf("qqqqqiQZ+qqqqq");	}
iQ	{ printf("qqqqqPaqqqqq");	}
Q\+	{ printf("qqqqqPZaqqqqq");	}
vks     { printf("qqqqqoqqqqq");	}
vkS     { printf("qqqqqOqqqqq");	}
ks	{ printf("qqqqq_oqqqqq");	}
kS      { printf("qqqqq_Oqqqqq");	} 
[[]\+k  { printf("qqqqqKZaqqqqq");	}
vk      { printf("qqqqqAqqqqq");	}
Dk      { printf("qqqqqkaqqqqq");  }
[[]k    { printf("qqqqqKaqqqqq");  }
Xk      { printf("qqqqqgaqqqqq");  }
\?k     { printf("qqqqqGaqqqqq");  }
Pk      { printf("qqqqqcaqqqqq");  }
Tk      { printf("qqqqqjaqqqqq");  }
\.k     { printf("qqqqqNaqqqqq");  }
Rk      { printf("qqqqqwaqqqqq");  }
Fk      { printf("qqqqqWaqqqqq");  }
èk      { printf("qqqqqXaqqqqq");  }
Uk      { printf("qqqqqnaqqqqq");  }
Ik      { printf("qqqqqpaqqqqq");  }
Ck      { printf("qqqqqbaqqqqq");  }
Hk      { printf("qqqqqBaqqqqq");  }
Ek      { printf("qqqqqmaqqqqq");  }
Yk      { printf("qqqqqlaqqqqq");  }
Ok      { printf("qqqqqvaqqqqq");  }
'k      { printf("qqqqqSaqqqqq");  }
\"k	{ printf("qqqqqRaqqqqq");  }
&quot;k { printf("qqqqqRaqqqqq"); /*Modifying "k to &quot;k based  for xml purpose } */ }
&#34;k  { printf("qqqqqRaqqqqq"); /*Modifying "k to &#34;k based  for xml purpose in 12.04 Ubuntu } */ }
Lk      { printf("qqqqqsaqqqqq");  }
=k      { printf("qqqqqwraqqqqq"); /*
=kk     { printf("qqqqq=kqqqqq"); Removing '=kk' mapping as it works with '=k' mapping logically Ex: 'ik=kksa' , 'oL=kksa'  */}
\{k     { printf("qqqqqkRaqqqqq");   }

\”k	{ printf("qqqqqjZaqqqqq");   }

\”ks	{ printf("qqqqqjZoqqqqq");   }

\”kks  { printf("qqqqqjZAoqqqqq");   }

\”kk   { printf("qqqqqjZAAqqqqq");   }

Ük	{ printf("qqqqqSaqqqqq");	}

oQq	{ printf("qqqqqkuqqqqq");	} 	

oQs	{ printf("qqqqqkeqqqqq");	}

kW	{ printf("qqqqq_oYqqqqq");	}

HkkS	{ printf("qqqqqBOqqqqq");	}

Ùk	{ printf("qqqqqwwaqqqqq");	}
vkW	{ printf("qqqqqoYqqqqq");	}
IkQ    { printf("qqqqqPaqqqqq");	}
[[]ak	{ printf("qqqqqKAMqqqqq");	}
mQ	{ printf("qqqqqUqqqqq");	}
maQ	{ printf("qqqqqUMqqqqq");	}
m¡Q	{ printf("qqqqqUzqqqqq");	}
'Zk	{ printf("qqqqqrSaqqqqq"); /*iznf'Zkr*/ 	}

bZ	                {       printf("qqqqqIqqqqq");  /* Here Z is making 'i' to  'I' इ is replaced as ई */ }
ozQ			{       printf("qqqqqkraqqqqq");	}
iz			{       printf("qqqqqpraqqqqq");  /*x: yksdfiz; */ }
cz			{	printf("qqqqqbraqqqqq");	/*  (fczLVy)  */ }
T\+k			{	printf("qqqqqjaZqqqqq"); /* yksjsaT+k */	}
kas			{	printf("qqqqq_oMqqqqq"); /* vo;okas */	}
OkQ			{	printf("qqqqqkaqqqqq");	/*OkqQN*/	}
Wk			{	printf("qqqqq_oYqqqqq"); /*cWkDl*/ 	}
Ùkk			{	printf("qqqqqwwAqqqqq"); /*mi;ksxdÙkkZvksa*/		}
Ùkks			{	printf("qqqqqwwoqqqqq"); /*mÙkksyd*/		}
I\+kQ			{	printf("qqqqqPZaqqqqq"); /*fdj[kksI+kQ*/		}
FZk			{	printf("qqqqqrWaqqqqq");/*ikfFZko */	}
\.Zk			{	printf("qqqqqrNaqqqqq");/*of.Zkr */	}

%%
