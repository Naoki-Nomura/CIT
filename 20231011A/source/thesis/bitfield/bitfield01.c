//
// @description:	Samples
// @author:			Naoki Nomura
//
// #define	_DEBUG

#ifdef _DEBUG
	#include	<CIDebug.h>
#endif

	
typedef struct{
	unsigned	int a : 10;
	unsigned	int b : 8;
	unsigned	int c : 12;
	unsigned	int d : 2;
}BF;

typedef union{
	BF	f;
	unsigned	int	u;
}test;



test	val;
int	ival;


void	main()		
{
	
	val.u = 0xffffffff;


#ifdef _DEBUG
//	putbit(val.f.a,10);
	CIDebug.vbit("val.f.a >>>", val.f.a,10,0x03ff);
	CIDebug.vbit("val.f.b >>>", val.f.b,8,0xff);
	CIDebug.vbit("val.f.c >>>", val.f.c,12,0xfff);
	CIDebug.vbit("val.f.d >>>", val.f.d,2,0x03);

	CIDebug.vint("val.f.a  >>>", val.f.a ,1023 );
	CIDebug.vint("val.f.b  >>>", val.f.b ,255 );
	CIDebug.vint("val.f.c  >>>", val.f.c ,4095 );
	CIDebug.vint("val.f.d  >>>", val.f.d ,3 );
#endif

	ival = val.f.a + val.f.b + val.f.c;
	
#ifdef _DEBUG
	CIDebug.vint("ival  >>>", ival ,5373 );
#endif

	val.f.a = 0x02;
	val.f.b = 0x5;
	val.f.c = 0x3;
	val.f.d = 0x1;

#ifdef _DEBUG
	CIDebug.vbit("val.f.a >>>", val.f.a,10,0x02);
	CIDebug.vbit("val.f.b >>>", val.f.b,8,0x05);
	CIDebug.vbit("val.f.c >>>", val.f.c,12,0x03);
	CIDebug.vbit("val.f.d >>>", val.f.d,2,0x01);
#endif


}		
		

	




