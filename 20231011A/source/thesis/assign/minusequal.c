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
	
	a = 100;
	b = 10;
	c = 100;
	ap = &a;
	bp = &b;

	#ifdef _DEBUG
	CIDebug.vint("1.a >>>", a,100);
	#endif


	a -= 5;
	#ifdef _DEBUG
	CIDebug.vint("2.a >>>", a,95);
	#endif

	a -= b;
	#ifdef _DEBUG
	CIDebug.vint("3.a >>>", a,85);
	#endif

	*ap -= *bp;
	#ifdef _DEBUG
	CIDebug.vint("4.a >>>", a,75);
	#endif

	a = 100;
	b = 50;
	c = 10;

	*ap -= *bp - c;
	#ifdef _DEBUG
	CIDebug.vint("5.a >>>", a,60);
	#endif


	
	
}





