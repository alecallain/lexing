%{
	#include <stdio.h>
%}

%%
;				{printf("END_STATEMENT\n");}
[0-9]+				{printf("INT\n");}
[0-9]+\.[0-9]+			{printf("FLOAT\n");}
POINT|Point|point		{printf("Ploting point...\n .\n");}
LINE|line|Line			{printf("Drawing line...\n_____________\n");}
RECTANGLE|Rectangle|rectangle	{printf("Drawing rectangle...\n");
				 printf("------------------\n");
				 printf("|                |\n");
				 printf("|                |\n");
				 printf("------------------\n");}
CIRCLE|Circle|circle		{printf("Drawing circle...\n O\n");}
Red|Orange|Yellow|Green|Blue|Purple|Brown|Black	{printf("SET_COLOR\n");}
red|orange|yellow|green|blue|purple|brown|black {printf("SET_COLOR\n");}
exit|quit|END|end			{printf("Goodbye\n"); return 0;}
\n|\t|[ ]+			;
.				{printf("Cant recognize...\n");}
%%

/**
* This is a lexing file for our
* ZoomJoyStrong language
*
* @author Alec Allain
* @version 10/27/18
*/

/** Main method */
int main (int argc, char** argv) {
	yylex();
	return 0;
}
