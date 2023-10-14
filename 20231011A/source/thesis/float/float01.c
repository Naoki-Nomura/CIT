//
// @description:	Samples
// @author:			Naoki Nomura
//
// #define	_DEBUG

#ifdef _DEBUG
	#include	<CIDebug.h>
#endif



float	func1(){
	float result;
	result = 100 + 200 + 300;

	#ifdef _DEBUG
	CIDebug.vfloat("func1() result >>>",result ,600.0f);		// 600.0000
	#endif

    return  result;
}


int	func2(){
	int  result;
	result = 100 + 200 + 300;

	#ifdef _DEBUG
	CIDebug.vint("func2() result >>>",result,600);		// 600.0000
	#endif

    return  result;
}



//
// @description:	Samples
// @author:			Naoki Nomura
//
void	main() {
    float a;
    int     b;
    a = func1();
	#ifdef _DEBUG
	CIDebug.vfloat("a >>>",a,600.0f);
	#endif

    b = func2();
	#ifdef _DEBUG
	CIDebug.vint("b >>>",b,600);
	#endif
    
}



