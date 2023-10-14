//
// @description:	Samples
// @author:			Naoki Nomura
//
// #define	_DEBUG

#ifdef _DEBUG
	#include	<CIDebug.h>
#endif


int	a,b;
void	main()	
{	

	a = 700;
	b = 0;

	#ifdef _DEBUG
		CIDebug.msg("*** no default ***");
	#endif

	switch (a) {
        case 100:
		b = 1000;
		break;

        case 200:
		b = 2000;
		break;


        case 300:
		b = 3000;
		break;
	}		



	#ifdef _DEBUG
		CIDebug.vint("a >>>",a,700);
		CIDebug.vint("b >>>",b,0);
	#endif

}



