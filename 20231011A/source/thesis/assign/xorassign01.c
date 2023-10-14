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

	a = 0xf7;
	b = 0xF2;
	ap = &a;
	bp = &b;

	#ifdef _DEBUG
	CIDebug.vinthex("1.a=", a,0x000000F7);
	#endif


	a ^= 0x7f;
	#ifdef _DEBUG
	CIDebug.vinthex("2.a=", a,0x00000088);
	#endif

	a = 0x08ff;
	b = 0x0fff;
	a ^= b;
	#ifdef _DEBUG
	CIDebug.vinthex("3.a=", a,0x00000700);
	#endif

	a = 0x08ff;
	b = 0x0fff;
	*ap ^= *bp;
	#ifdef _DEBUG
	CIDebug.vinthex("4.a=", a,0x00000700);
	#endif


	a = 0xf8ff;
	b = 0xf0ff;
	c = 0x0f00;

	*ap ^= *bp + c;
//	*ap ^= *bp;
	#ifdef _DEBUG
	CIDebug.vinthex("5.a=", a,0x00000700);
	#endif
	
}





