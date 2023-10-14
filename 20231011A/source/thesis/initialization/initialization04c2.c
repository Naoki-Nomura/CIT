//
// @description:	Samples
// @author:			Naoki Nomura
//
// #define	_DEBUG

#ifdef _DEBUG
	#include	<CIDebug.h>
#endif

	
int answer;

void	main()
{
//	int a[3] = { 100, -200, 300 };
	int va0 = 100;
	int va1 = -200;
	int va2 = 300;

//	int b[3] = { 400, -500, 600 };
	int vb0 = 400;
	int vb1 = -500;
	int vb2 = 600;

//	int c[5] = { 700, 800, -900, 1000, 1100 };
	int vc0 = 700;
	int vc1 = 800;
	int vc2 = -900;
	int vc3 = 1000;
	int vc4 = 1100;


	#ifdef _DEBUG

//	CIDebug.vinthex("&a[0] >>>", &a[0]);
//	disphex(&a[0]);
//	puts("\n");
	printhex("&va1 >>>0x", (long)&va0 );
	printhex("&vb0 >>>0x", (long)&vb0 );
	printhex("&vc0 >>>0x", (long)&vc0 );

	CIDebug.vint("va0=", va0,100);
	CIDebug.vint("va1=", va1,-200);
	CIDebug.vint("va2=", va2,300);

	CIDebug.vint("vb0=", vb0,400);
	CIDebug.vint("vb1=", vb1,-500);
	CIDebug.vint("vb2=", vb2,600);

	CIDebug.vint("vc0=", vc0,700);
	CIDebug.vint("vc1=", vc1,800);
	CIDebug.vint("vc2=", vc2,-900);
	CIDebug.vint("vc3=", vc3,1000);
	CIDebug.vint("vc4=", vc4,1100);
	
	#endif

	answer = va0;
	answer = va1;
	answer = va2;

	answer = vb0;
	answer = vb1;
	answer = vb2;


	answer = vc0;
	answer = vc1;
	answer = vc2;
	answer = vc3;
	answer = vc4;
	

}
	
					

