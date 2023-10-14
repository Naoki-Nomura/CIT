//
// @description:	Samples
// @author:			Naoki Nomura
//
#define	_DEBUG

#ifdef _DEBUG
	#include	<CIDebug.h>
#endif

float	val01 = 100;
float	val02 = 200;
float	val03 = 300;
float	val04 = 400;
float	val05 = 500;
float	val06 = 600;
float	val07 = 700;
float	val08 = 800;
float	val09 = 900;
float	val10 = 1000;


float	calc_add(float v1,float v2){					
	return  v1+v2;
}					

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
	volatile  float lv01 = 10;
	volatile  float lv02 = 20;
	volatile  float lv03 = 30;
	volatile  float lv04 = 40;
	volatile  float lv05 = 50;
	volatile  float lv06 = 60;
	volatile  float lv07 = 70;
	volatile  float lv08 = 80;
	volatile  float lv09 = 90;
	volatile  float lv10 = 100;

	// 最適化されても関数が呼び出されるように				
//	return  p1+p2+p3+p4+p5+p6+p7+p8+p9+p10;
//	return  calc_add(p1,p2) + p2+p3+p4+p5+p6+p7+p8+p9+p10;
	if(p1 > 0){
		return  p1+p2+p3+p4+p5+p6+p7+p8+p9+p10;
	}
	else{
//		return  calc_add(p1,p2) + calc_add(p3,p4) + p5+p6+p7+p8+p9+p10;
		return  lv01+p2+p3+p4+p5+p6+p7+p8+p9+p10;
	}

}					




void	main() {					
	/* volatile */ float	ans;		
/*
	ans = func00();		
	#ifdef _DEBUG
		CIDebug.vfloat("func00 result1 >>>",ans,100.0f);
	#endif

	ans = func01(val01);		
	#ifdef _DEBUG
		CIDebug.vfloat("func01 result1 >>>",ans,100.0f);
	#endif

	ans = func02(val01,200.0);		
	#ifdef _DEBUG
		CIDebug.vfloat("func02 result1 >>>",ans,300.0f);
	#endif

	ans = func03(val01,200.0,300.0);		
	#ifdef _DEBUG
		CIDebug.vfloat("func03 result1 >>>",ans,600.0f);
	#endif

	ans = func04(val01,200.0,300.0,400.0);		
	#ifdef _DEBUG
		CIDebug.vfloat("func04 result1 >>>",ans,1000.0f);
	#endif

	ans = func05(val01,200.0,300.0,400.0,500.0);		
	#ifdef _DEBUG
		CIDebug.vfloat("func05 result1 >>>",ans,1500.0f);
	#endif

	ans = func06(val01,200.0,300.0,400.0,500.0,600.0);		
	#ifdef _DEBUG
		CIDebug.vfloat("func06 result1 >>>",ans,2100.0f);
	#endif

	ans = func07(val01,200.0,300.0,400.0,500.0,600.0,700.0);		
	#ifdef _DEBUG
		CIDebug.vfloat("func07 result1 >>>",ans,2800.0f);
	#endif

	ans = func08(val01,200.0,300.0,400.0,500.0,600.0,700.0,800.0);		
	#ifdef _DEBUG
		CIDebug.vfloat("func08 result1 >>>",ans,3600.0f);
	#endif

	ans = func09(val01,200.0,300.0,400.0,500.0,600.0,700.0,800.0,900.0);		
	#ifdef _DEBUG
		CIDebug.vfloat("func09 result1 >>>",ans,4500.0f);
	#endif
*/

	ans = func10(val01,val02,val03,val04,val05,val06,val07,val08,val09,val10);		
	#ifdef _DEBUG
		CIDebug.vfloat("func10 result1 >>>",ans,5500.0f);
	#endif


}					




