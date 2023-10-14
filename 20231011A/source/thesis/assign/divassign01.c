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
	int	*ap,*bp;

	a = 5000;
	b = 10;
	c = 100;
	ap = &a;
	bp = &b;

	#ifdef _DEBUG
		CIDebug.vint("1.a >>>", a,5000);
	#endif


	a /= 5;
	#ifdef _DEBUG
		CIDebug.vint("2.a >>>", a,1000);
	#endif

	a /= b;
	#ifdef _DEBUG
		CIDebug.vint("3.a >>>", a,100);
	#endif

	*ap /= *bp;
	#ifdef _DEBUG
		CIDebug.vint("4.a >>>", a,10);
	#endif


	a = 5000;
	b = 10;
	c = 90;

	*ap /= *bp + c;
	#ifdef _DEBUG
		CIDebug.vint("6.a >>>", a,50);
	#endif
	
}





