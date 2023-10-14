//
// @description:	Samples
// @author:			Naoki Nomura
//
// #define	_DEBUG

#ifdef _DEBUG
	#include	<CIDebug.h>
#endif


int	a,b,c;	
int answer1;		
int answer2;		
void	main()		
{		
	a = 0;	
	b = 20;	
	c = 30;	
		
	while (0);	
		
	answer1 = 0;	
	answer2 = 0;	
	while (0){	
		answer1 = 100;
		answer2 = 200;
		break;
	}	
	#ifdef _DEBUG
		CIDebug.vint("answer1 >>>",answer1,0);
		CIDebug.vint("answer2 >>>",answer2,0);
	#endif
		
	while (1){	
		a=a+1;
		if(a > 10)break;
	}	
	#ifdef _DEBUG
		CIDebug.vint("a >>>",a,11);
	#endif

		
	while (a <= 10)a=a+1;	
	#ifdef _DEBUG
		CIDebug.vint("a >>>",a,11);
	#endif

		
	a = 0;	
	b = 0;	
	while (a <= 10){	
		a=a+1;
		b=b+1;
	}	
	#ifdef _DEBUG
		CIDebug.vint("a >>>",a,11);
		CIDebug.vint("b >>>",b,11);
	#endif
		
		
	while ((a++) <= 10)b=b+1;	
		
	#ifdef _DEBUG
		CIDebug.vint("b >>>",b,11);
	#endif

}		


