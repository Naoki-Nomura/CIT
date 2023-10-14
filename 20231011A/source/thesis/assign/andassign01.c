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

	a = 0xff;
	b = 0x03;
	ap = &a;
	bp = &b;

	#ifdef _DEBUG
		CIDebug.vinthex("1.a=", a,0x000000ff);
	#endif


	a &= 0x03;
	#ifdef _DEBUG
		CIDebug.vinthex("2.a=", a,0x00000003);
	#endif

	a = 0x00ff;
	b = 0x1110;
	a &= b;
	#ifdef _DEBUG
		CIDebug.vinthex("3.a=", a , 0x00000010);
	#endif

	a = 0x000f;
	b = 0xfff8;
	*ap &= *bp;
	#ifdef _DEBUG
		CIDebug.vinthex("4.a=", a ,0x00000008);
	#endif


	a = 0x000f;
	b = 0xfff0;
	c = 0x0003;

	*ap &= *bp + c;
	#ifdef _DEBUG
		CIDebug.vinthex("5.a=", a , 0x00000003);
	#endif

}



