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

	a = 10;
	#ifdef _DEBUG
	CIDebug.vint("1.a=", a,10);
	#endif


	a = b = c = 20;

	#ifdef _DEBUG
	CIDebug.vint("2.a=", a,20);
	CIDebug.vint("3.b=", b,20);
	CIDebug.vint("4.c=", c,20);
	#endif
}





