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
	
	a = 2;
	b = 6;
	ap = &a;
	bp = &b;

	#ifdef _DEBUG
	CIDebug.vint("1.a >>>", a,2);
	#endif


	a <<= 2;
	#ifdef _DEBUG
	CIDebug.vint("2.a >>>", a,8);
	#endif

	a = 2;
	a <<= b;
	#ifdef _DEBUG
	CIDebug.vint("3.a >>>", a,128);
	#endif

	a = 2;
	*ap <<= *bp;
	#ifdef _DEBUG
	CIDebug.vint("4.a >>>", a,128);
	#endif


	a = 2;
	b = 5;
	c = 1;

	*ap <<= *bp + c;
	#ifdef _DEBUG
	CIDebug.vint("6.a >>>", a,128);
	#endif
	
	
	
}





