//
// @description:	Samples
// @author:			Naoki Nomura
//
// #define	_DEBUG

#ifdef _DEBUG
	#include	<CIDebug.h>
#endif


void	main()
{
	int a,b,c;

	a = 0;
	b = 0;
	c = 0;
label :

	a++;
	b++;
	c++;
	if (a < 10) {
		goto label;
	}


	#ifdef _DEBUG
		CIDebug.vint("a >>>" ,a,10);
		CIDebug.vint("b >>>" ,b,10);
		CIDebug.vint("c >>>" ,c,10);
	#endif

}





