//
// @description:	Samples
// @author:			Naoki Nomura
//
// #define	_DEBUG

#ifdef _DEBUG
	#include	<CIDebug.h>
#endif


// float result=3;
float result;
void	main() {
//	result = 100 + 200 + 300;
//	result = 123.456f;
//	result = -118.625f;
//	result = 118.625f;
	result = 3;
	
	#ifdef _DEBUG
//		result = 0.2f;
//		result = 100.0f;
//		result = 300.0f;
		result = 200.0f;
		// CIDebug.vfloat("result >>>",result ,600.0f);
		CIDebug.fbit("fbit(result) >>>", result);
		CIDebug.fbitformat("fbitformat(result) >>>", result);
		puts("\n");
		
		
		putfloat(result);
	#endif

}

