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
	int a[3] = { 100, -200, 300 };
	int b[3] = { 400, -500, 600 };
	int c[5] = { 700, 800, -900, 1000, 1100 };


	#ifdef _DEBUG

//	CIDebug.vinthex("&a[0] >>>", &a[0]);
//	disphex(&a[0]);
//	puts("\n");
	printhex("&a[0] >>>0x", (long)&a[0] );
	printhex("&b[0] >>>0x", (long)&b[0] );
	printhex("&c[0] >>>0x", (long)&c[0] );
	

	CIDebug.vint("a[0]=", a[0],100);
	CIDebug.vint("a[1]=", a[1],-200);
	CIDebug.vint("a[2]=", a[2],300);

	CIDebug.vint("b[0]=", b[0],400);
	CIDebug.vint("b[1]=", b[1],-500);
	CIDebug.vint("b[2]=", b[2],600);

	CIDebug.vint("c[0]=", c[0],700);
	CIDebug.vint("c[1]=", c[1],800);
	CIDebug.vint("c[2]=", c[2],-900);
	CIDebug.vint("c[3]=", c[3],1000);
	CIDebug.vint("c[4]=", c[4],1100);
	
	#endif

	answer = a[0];
	answer = a[1];
	answer = a[2];

	answer = b[0];
	answer = b[1];
	answer = b[2];


	answer = c[0];
	answer = c[1];
	answer = c[2];
	answer = c[3];
	answer = c[4];
	

}
	
					

