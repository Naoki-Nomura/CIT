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

	a = 300;
	b = 0;
	c = 0;

	switch (a) {
        case 100:
               b = 1000;
				c = 1;
              break;	
        case 200:
                b = 2000;
				c = 2;
                break;	
        case 300:
                b = 3000;
				c = 3;
                break;
        default:
                b = 100;
				c = 4;
                break;
	}		



	#ifdef _DEBUG
		CIDebug.vint("a >>>",a,300);		
		CIDebug.vint("b >>>",b,3000);		
		CIDebug.vint("c >>>",c,3);		
	#endif

}



