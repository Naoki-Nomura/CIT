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
	
	a = 256;
	b = 3;
	ap = &a;
	bp = &b;

	#ifdef _DEBUG
	CIDebug.vint("1.a=", a,256);
	#endif


	a >>= 2;
	#ifdef _DEBUG
	CIDebug.vint("2.a=", a,64);
	#endif

	a = 256;
	a >>= b;
	#ifdef _DEBUG
	CIDebug.vint("3.a=", a,32);
	#endif

	a = 256;
	*ap >>= *bp;
	#ifdef _DEBUG
	CIDebug.vint("4.a=", a,32);
	#endif


	a = 256;
	b = 3;
	c = 1;

	*ap >>= *bp + c;
	#ifdef _DEBUG
	CIDebug.vint("5.a=", a,16);
	#endif
	
}





