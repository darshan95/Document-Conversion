/* Added by Roja(29-08-12) */
/* Some words doesnt need Canonical form . So replacing them here. */
/* Ex: KIMca in canonical form becomes KIFca . */
/* Replacing here 'F' with 'z'	*/
/* This file need to be improved */

%%

[ ]KIFc	{	printf(" KIzc"); /* KIFca    becomes KIzca   */	}
arefg	{	printf("arezg"); /* kareMge  becomes karezge */	}
eKefg	{	printf("eKezg"); /* xeKefge  becomes xeKezge */	}
yefg	{	printf("yezg");	 /* KAyefge  becomes KAyezge */ }
UFcAI	{	printf("UzcAI"); /* UFcAI    becomes UzcAI   */	}
kyofki 	{	printf("kyozki");/* kyofki   becomes kyozki  */	}
cUfki	{	printf("cUzki"); /* cUfki    becomes cUzki   */	}
xUfgI	{	printf("xUZgI"); /* xUfgI    becomes xUZgI   */ }
AUfgA	{	printf("AUzgA"); /* AUfgA    becomes AUzgA   */ }
KiFc	{	printf("Kizc");  /* KiFca    becomes Kizca   */	}

%%
