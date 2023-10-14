//
// @description:	Samples
// @author:			Naoki Nomura
//
// #define	_DEBUG

#ifdef _DEBUG
	#include	<CIDebug.h>
#endif


int a1;		
int a2;		
int a3;
void main()		
{		
		
	a1 = 0;	
	a2 = 0;	
	a3 = 0;	
	while (a3 < 100){	
		a1++;
		if(a1 <= 10)continue;

		a2++;
		if(a2 <= 20)continue;


		a3++;
	}	
	
	#ifdef _DEBUG
		CIDebug.vint("a1 >>>",a1,130);
		CIDebug.vint("a2 >>>",a2,120);
		CIDebug.vint("a3 >>>",a3,100);
	#endif

}		



