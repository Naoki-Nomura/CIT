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
	while (a < 100){

		a=a+1;
		if(a >= 80)break;

		b=b+1;
		if(b >= 8)break;


		c=c+1;
		if(c >= 5)break;

	}

	#ifdef _DEBUG
		CIDebug.vint("a >>>",a,5);
		CIDebug.vint("b >>>",b,5);
		CIDebug.vint("c >>>",c,5);
	#endif

}
		


