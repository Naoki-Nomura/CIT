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
	a = 0xf0;
	b = 0xF2;
	ap = &a;
	bp = &b;

	#ifdef _DEBUG
	CIDebug.vinthex("1.a=", a,0x000000F0);
	#endif


	a |= 0x0f;
	#ifdef _DEBUG
	CIDebug.vinthex("2.a=", a,0x000000FF);
	#endif

	a = 0x0000f8ff;
	b = 0x00000f00;
	a |= b;
	#ifdef _DEBUG
	CIDebug.vinthex("3.a=", a,0x0000FFFF);
	#endif

	a = 0x000000ff;
	b = 0xffffff01;
	*ap |= *bp;
	#ifdef _DEBUG
	CIDebug.vinthex("4.a=", a,0xFFFFFFFF);
	#endif


	a = 0x000e;
	b = 0xfff1;
	c = 0x000e;

	*ap |= *bp + c;
	#ifdef _DEBUG
	CIDebug.vinthex("5.a=", a,0x0000FFFF);
	#endif
	
}





