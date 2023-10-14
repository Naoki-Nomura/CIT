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
	float	ans = 0;
	float	a,b,c;
	a=20;
	b=30;
	c=70;
	ans = a * b * c - (( a + b ) / ( b - a - 0.2f)  + 100) ;	


	#ifdef _DEBUG
	CIDebug.vfloat("ans >>>" , ans , 41894.9f);
	#endif

}					



