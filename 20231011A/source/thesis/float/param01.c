//
// @description:	Samples
// @author:			Naoki Nomura
//
// #define	_DEBUG

#ifdef _DEBUG
	#include	<CIDebug.h>
#endif

float	func00(){					
	return  100.0f;
}					


float	func01(float p1){					
	return  p1;
}					


float	func02(float p1,float p2){					
	return  p1+p2;
}					


float	func03(float p1,float p2,float p3){					
	return  p1+p2+p3;
}					


float	func04(float p1,float p2,float p3,float p4){					
	return  p1+p2+p3+p4;
}					

float	func05(float p1,float p2,float p3,float p4,float p5){					
	return  p1+p2+p3+p4+p5;
}					

float	func06(float p1,float p2,float p3,float p4,float p5,float p6){					
	return  p1+p2+p3+p4+p5+p6;
}					

float	func07(float p1,float p2,float p3,float p4,float p5,float p6,float p7){					
	return  p1+p2+p3+p4+p5+p6+p7;
}					

float	func08(float p1,float p2,float p3,float p4,float p5,float p6,float p7,float p8){					
	return  p1+p2+p3+p4+p5+p6+p7+p8;
}					

float	func09(float p1,float p2,float p3,float p4,float p5,float p6,float p7,float p8,float p9){					
	return  p1+p2+p3+p4+p5+p6+p7+p8+p9;
}					

float	func10(float p1,float p2,float p3,float p4,float p5,float p6,float p7,float p8,float p9,float p10){					
	return  p1+p2+p3+p4+p5+p6+p7+p8+p9+p10;
}					


void	main() {					
	// volatile float	ans;		
	float	ans;		

	ans = func00();		
	#ifdef _DEBUG
		CIDebug.vfloat("func00 result1 >>>",ans,100.0f);
	#endif

	ans = func01(100.0);		
	#ifdef _DEBUG
		CIDebug.vfloat("func01 result1 >>>",ans,100.0f);
	#endif

	ans = func02(100.0,200.0);		
	#ifdef _DEBUG
		CIDebug.vfloat("func02 result1 >>>",ans,300.0f);
	#endif

	ans = func03(100.0,200.0,300.0);		
	#ifdef _DEBUG
		CIDebug.vfloat("func03 result1 >>>",ans,600.0f);
	#endif

	ans = func04(100.0,200.0,300.0,400.0);		
	#ifdef _DEBUG
		CIDebug.vfloat("func04 result1 >>>",ans,1000.0f);
	#endif

	ans = func05(100.0,200.0,300.0,400.0,500.0);		
	#ifdef _DEBUG
		CIDebug.vfloat("func05 result1 >>>",ans,1500.0f);
	#endif

	ans = func06(100.0,200.0,300.0,400.0,500.0,600.0);		
	#ifdef _DEBUG
		CIDebug.vfloat("func06 result1 >>>",ans,2100.0f);
	#endif

	ans = func07(100.0,200.0,300.0,400.0,500.0,600.0,700.0);		
	#ifdef _DEBUG
		CIDebug.vfloat("func07 result1 >>>",ans,2800.0f);
	#endif

	ans = func08(100.0,200.0,300.0,400.0,500.0,600.0,700.0,800.0);		
	#ifdef _DEBUG
		CIDebug.vfloat("func08 result1 >>>",ans,3600.0f);
	#endif

	ans = func09(100.0,200.0,300.0,400.0,500.0,600.0,700.0,800.0,900.0);		
	#ifdef _DEBUG
		CIDebug.vfloat("func09 result1 >>>",ans,4500.0f);
	#endif

	ans = func10(100.0,200.0,300.0,400.0,500.0,600.0,700.0,800.0,900.0,1000.0);		
	#ifdef _DEBUG
		CIDebug.vfloat("func10 result1 >>>",ans,5500.0f);
	#endif


}					




