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
	b = 7;
	c = 100;
	ap = &a;
	bp = &b;

	#ifdef _DEBUG
	CIDebug.vint("1.a >>>", a ,5000);
	#endif


	a %= 7;
	#ifdef _DEBUG
	CIDebug.vint("2.a >>>", a ,2);
	#endif

	a = 5000;
	b = 7;
	a %= b;
	#ifdef _DEBUG
	CIDebug.vint("3.a >>>", a ,2);
	#endif

	a = 5000;
	b = 7;
	*ap %= *bp;
	#ifdef _DEBUG
	CIDebug.vint("4.a >>>", a ,2);
	#endif


	a = 5000;
	b = 7;
	c = 4;

	*ap %= *bp + c;
	#ifdef _DEBUG
	CIDebug.vint("6.a >>>", a ,6);
	#endif


	
	
}





