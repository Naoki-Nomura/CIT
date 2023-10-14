//
// @description:	Samples
// @author:			Naoki Nomura
//
// #define	_DEBUG

#ifdef _DEBUG
	#include	<CIDebug.h>
#endif


char	val00 = 0;
char	val01 = 1;
char	val02 = 2;
char	val03 = 3;
char	val04 = 4;
char	val05 = 5;
char	val06 = 6;
char	val07 = 7;
char	val08 = 8;
char	val09 = 9;
char	val10 = 10;


char	func00(){					
	return  (char)1;
}					


char	func01(char p1){					
	return  p1;
}					


char	func02(char p1,char p2){					
	return  p1+p2;
}					


char	func03(char p1,char p2,char p3){					
	return  p1+p2+p3;
}					


char	func04(char p1,char p2,char p3,char p4){					
	return  p1+p2+p3+p4;
}					

char	func05(char p1,char p2,char p3,char p4,char p5){					
	return  p1+p2+p3+p4+p5;
}					

char	func06(char p1,char p2,char p3,char p4,char p5,char p6){					
	return  p1+p2+p3+p4+p5+p6;
}					

char	func07(char p1,char p2,char p3,char p4,char p5,char p6,char p7){					
	return  p1+p2+p3+p4+p5+p6+p7;
}					

char	func08(char p1,char p2,char p3,char p4,char p5,char p6,char p7,char p8){					
	return  p1+p2+p3+p4+p5+p6+p7+p8;
}					

char	func09(char p1,char p2,char p3,char p4,char p5,char p6,char p7,char p8,char p9){					
	return  p1+p2+p3+p4+p5+p6+p7+p8+p9;
}					


char	func10(char p1,char p2,char p3,char p4,char p5,char p6,char p7,char p8,char p9,char p10){					
	return  p1+p2+p3+p4+p5+p6+p7+p8+p9+p10;
}					


char	func11(char p1,char p2,char p3,char p4,char p5,char p6,char p7,char p8,char p9,char p10,char p11){					
	return  p1+p2+p3+p4+p5+p6+p7+p8+p9+p10+p11;
}					

char	func12(char p1,char p2,char p3,char p4,char p5,char p6,char p7,char p8,char p9,char p10,char p11,char p12){					
	return  p1+p2+p3+p4+p5+p6+p7+p8+p9+p10+p11+p12;
}					


char	func13(char p1,char p2,char p3,char p4,char p5,char p6,char p7,char p8,char p9,char p10,char p11,char p12,char p13){					
	return  p1+p2+p3+p4+p5+p6+p7+p8+p9+p10+p11+p12+p13;
}					


char	func30(	 char p01,char p02,char p03,char p04,char p05,char p06,char p07,char p08,char p09,char p10
		,char p11,char p12,char p13,char p14,char p15,char p16,char p17,char p18,char p19,char p20
		,char p21,char p22,char p23,char p24,char p25,char p26,char p27,char p28,char p29,char p30
	){					
	return  
			p01+p02+p03+p04+p05+p06+p07+p08+p09+p10
		+	p11+p12+p13+p14+p15+p16+p17+p18+p19+p20
		+	p21+p22+p23+p24+p25+p26+p27+p28+p29+p30
		;
}					



void	main() {					
	/* volatile */ char	ans;		

	ans = func00();		
	#ifdef _DEBUG
		CIDebug.vchar("func00 result1 >>>",ans,1);
	#endif

	ans = func01(1);		
	#ifdef _DEBUG
		CIDebug.vchar("func01 result1 >>>",ans,1);
	#endif

	ans = func02(1,2);		
	#ifdef _DEBUG
		CIDebug.vchar("func02 result1 >>>",ans,3);
	#endif

	ans = func03(1,2,3);		
	#ifdef _DEBUG
		CIDebug.vchar("func03 result1 >>>",ans,6);
	#endif

	ans = func04(1,2,3,4);		
	#ifdef _DEBUG
		CIDebug.vchar("func04 result1 >>>",ans,10);
	#endif

	ans = func05(1,2,3,4,5);		
	#ifdef _DEBUG
		CIDebug.vchar("func05 result1 >>>",ans,15);
	#endif

	ans = func06(1,2,3,4,5,6);		
	#ifdef _DEBUG
		CIDebug.vchar("func06 result1 >>>",ans,21);
	#endif

	ans = func07(1,2,3,4,5,6,7);		
	#ifdef _DEBUG
		CIDebug.vchar("func07 result1 >>>",ans,28);
	#endif

	ans = func08(1,2,3,4,5,6,7,8);		
	#ifdef _DEBUG
		CIDebug.vchar("func08 result1 >>>",ans,36);
	#endif

	ans = func09(1,2,3,4,5,6,7,8,9);		
	#ifdef _DEBUG
		CIDebug.vchar("func09 result1 >>>",ans,45);
	#endif

//	ans = func10(1,2,3,4,5,6,7,8,9,10);
	
	#ifdef _DEBUG
//		CIDebug.vchar("func10 result1 >>>",ans,55);
	#endif
	
	
	ans = func10(val01,val02,val03,val04,val05,val06,val07,val08,val09,val10);		
	
	#ifdef _DEBUG
		CIDebug.vchar("func10 result1 >>>",ans,55);
	#endif



//	ans = func11(1,2,3,4,5,6,7,8,9,10,11);
//	ans = func12(1,2,3,4,5,6,7,8,9,10,11,12);
//	ans = func13(1,2,3,4,5,6,7,8,9,10,11,12,13);

/*
	ans = func30(
		  1,2,3,4,5,6,7,8,9,10
		 ,11,12,13,14,15,16,17,18,19,20
		 ,21,22,23,24,25,26,27,28,29,30
	);
*/
}					




