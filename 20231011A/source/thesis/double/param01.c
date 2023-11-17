//
// @description:	Samples
// @author:			Naoki Nomura
//
// #define	_DEBUG

#ifdef _DEBUG
	#include	<CIDebug.h>
#endif


double	val00 = 1234.56789;
double	val01 = 100;
double	val02 = 200;
double	val03 = 300;
double	val04 = 400;
double	val05 = 500;
double	val06 = 600;
double	val07 = 700;
double	val08 = 800;
double	val09 = 900;
double	val10 = 1000;


double	func00(){					
	return  100.0;
}					


double	func01(double p1){					
	return  p1;
}					


double	func02(double p1,double p2){					
	return  p1+p2;
}					


double	func03(double p1,double p2,double p3){					
	return  p1+p2+p3;
}					


double	func04(double p1,double p2,double p3,double p4){					
	return  p1+p2+p3+p4;
}					

double	func05(double p1,double p2,double p3,double p4,double p5){					
	return  p1+p2+p3+p4+p5;
}					

double	func06(double p1,double p2,double p3,double p4,double p5,double p6){					
	return  p1+p2+p3+p4+p5+p6;
}					

double	func07(double p1,double p2,double p3,double p4,double p5,double p6,double p7){					
	return  p1+p2+p3+p4+p5+p6+p7;
}					

double	func08(double p1,double p2,double p3,double p4,double p5,double p6,double p7,double p8){					
	return  p1+p2+p3+p4+p5+p6+p7+p8;
}					

double	func09(double p1,double p2,double p3,double p4,double p5,double p6,double p7,double p8,double p9){					
	return  p1+p2+p3+p4+p5+p6+p7+p8+p9;
}					


double	func10(double p1,double p2,double p3,double p4,double p5,double p6,double p7,double p8,double p9,double p10){					
	return  p1+p2+p3+p4+p5+p6+p7+p8+p9+p10;
}					


/*
double	func10a(double p1,double p2,double p3,double p4,double p5,double p6,double p7,double p8,double p9,double p10,int i){					
	return  p1+p2+p3+p4+p5+p6+p7+p8+p9+p10+i;
}					

double	func10b(double p1,double p2,double p3,double p4,double p5,double p6,double p7,double p8,double p9,double p10,char c){					
	return  p1+p2+p3+p4+p5+p6+p7+p8+p9+p10+c;
}					



double	func11(double p1,double p2,double p3,double p4,double p5,double p6,double p7,double p8,double p9,double p10,double p11){					
	return  p1+p2+p3+p4+p5+p6+p7+p8+p9+p10+p11;
}					

double	func12(double p1,double p2,double p3,double p4,double p5,double p6,double p7,double p8,double p9,double p10,double p11,double p12){					
	return  p1+p2+p3+p4+p5+p6+p7+p8+p9+p10+p11+p12;
}					
*/



void	main() {					
	/* volatile */ double	ans;		

	ans = func00();		
	#ifdef _DEBUG
		CIDebug.vdouble("func00 result1 >>>",ans,100.0);
	#endif

	ans = func01(100.0);		
	#ifdef _DEBUG
		CIDebug.vdouble("func01 result1 >>>",ans,100.0);
	#endif

	ans = func02(100.0,200.0);		
	#ifdef _DEBUG
		CIDebug.vdouble("func02 result1 >>>",ans,300.0);
	#endif

	ans = func03(100.0,200.0,300.0);		
	#ifdef _DEBUG
		CIDebug.vdouble("func03 result1 >>>",ans,600.0);
	#endif

	ans = func04(100.0,200.0,300.0,400.0);		
	#ifdef _DEBUG
		CIDebug.vdouble("func04 result1 >>>",ans,1000.0);
	#endif

	ans = func05(100.0,200.0,300.0,400.0,500.0);		
	#ifdef _DEBUG
		CIDebug.vdouble("func05 result1 >>>",ans,1500.0);
	#endif

	ans = func06(100.0,200.0,300.0,400.0,500.0,600.0);		
	#ifdef _DEBUG
		CIDebug.vdouble("func06 result1 >>>",ans,2100.0);
	#endif

	ans = func07(100.0,200.0,300.0,400.0,500.0,600.0,700.0);		
	#ifdef _DEBUG
		CIDebug.vdouble("func07 result1 >>>",ans,2800.0);
	#endif

	ans = func08(100.0,200.0,300.0,400.0,500.0,600.0,700.0,800.0);		
	#ifdef _DEBUG
		CIDebug.vdouble("func08 result1 >>>",ans,3600.0);
	#endif

	ans = func09(100.0,200.0,300.0,400.0,500.0,600.0,700.0,800.0,900.0);		
	#ifdef _DEBUG
		CIDebug.vdouble("func09 result1 >>>",ans,4500.0);
	#endif

	ans = func10(100.0,200.0,300.0,400.0,500.0,600.0,700.0,800.0,900.0,1000.0);
//	ans = func10(val01,val02,val03,val04,val05,val06,val07,val08,val09,val10);		
	
	#ifdef _DEBUG
		CIDebug.vdouble("func10 result1 >>>",ans,5500.0);
	#endif

//	ans = func10a(100.0,200.0,300.0,400.0,500.0,600.0,700.0,800.0,900.0,1000.0,1);

//	ans = func10b(100.0,200.0,300.0,400.0,500.0,600.0,700.0,800.0,900.0,1000.0,0x01);


//	ans = func11(100.0,200.0,300.0,400.0,500.0,600.0,700.0,800.0,900.0,1000.0,1100.0);

//	ans = func12(100.0,200.0,300.0,400.0,500.0,600.0,700.0,800.0,900.0,1000.0,1100.0,1200.0);

}					




