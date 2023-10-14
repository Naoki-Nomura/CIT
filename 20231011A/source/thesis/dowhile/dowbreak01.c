//
// @description:	Samples
// @author:			Naoki Nomura
//
//
// @description:	Samples
// @author:			Naoki Nomura
//
// #define	_DEBUG

#ifdef _DEBUG
	#include	<CIDebug.h>
#endif



int	a,b,c;
void	main()	
{	

	a = 0;
	b = 0;
	c = 0;
	do{
		a++;
		if(a >= 10 ){
			break;
		}
		b++;
		if(b >= 3 ){
			break;
		}
		c++;
	}
	while (a < 100);	
		
	#ifdef _DEBUG
		CIDebug.vint("a >>>" , a , 3);
		CIDebug.vint("b >>>" , b , 3);
		CIDebug.vint("c >>>" , c , 2);
	#endif




}
		


