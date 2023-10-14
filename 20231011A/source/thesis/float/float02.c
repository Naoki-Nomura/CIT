//
// @description:	Samples
// @author:			Naoki Nomura
//
// #define	_DEBUG

#ifdef _DEBUG
	#include	<CIDebug.h>
#endif

float	func3(float x,float y,float z){					
	float	r;
	r = x+y+z;
 // CIDebug.vfloat(r);

	return  r;

}					


void	main() {					
	float	ans;		
	float	p1,p2,p3;

	ans = func3(100.0,200.0,300.0);		
	#ifdef _DEBUG
		CIDebug.vfloat("func3 result1 >>>",ans,600.0f);
	#endif

	p1 = 100;
	p2 = 200;
	p3 = 300;
	ans = func3(p1,p2,p3);		
	#ifdef _DEBUG
		CIDebug.vfloat("func3 result2 >>>",ans,600.0f);
	#endif


	ans = func3(100,200,300);					
	#ifdef _DEBUG
		CIDebug.vfloat("func3 result3 >>>",ans,600.0f);	
	#endif

}					




