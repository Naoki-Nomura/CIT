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
	
	a = 0;
	b = 10;
	c = 100;
	ap = &a;
	bp = &b;

	#ifdef _DEBUG
	CIDebug.vint("1.a >>>", a,0);
	#endif

	a++;
	#ifdef _DEBUG
	CIDebug.vint("2.a >>>", a,1);
	#endif

	a += 5;
	#ifdef _DEBUG
	CIDebug.vint("3.a >>>", a,6);
	#endif

	a += b;
	#ifdef _DEBUG
	CIDebug.vint("4.a >>>", a,16);
	#endif

	*ap += *bp;
	#ifdef _DEBUG
	CIDebug.vint("5.a >>>", a,26);
	#endif


	a = 5;
	b = 10;
	c = 100;

	*ap += *bp + c;
	#ifdef _DEBUG
	CIDebug.vint("6.a >>>", a,115);
	#endif
	
}





