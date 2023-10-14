//
// @description:	Samples
// @author:			Naoki Nomura
//
// #define	_DEBUG

#ifdef _DEBUG
	#include	<CIDebug.h>
#endif


float val01 = 1.2f;
float val02 = 3.5f;

void	main()	
{	
	float answer;
//	answer = ~7;
// ビット反転
//
//	00000000 00000000 00000000 00000111b			=	 7
//	----------------------------------------------------------------
//	11111111 11111111 11111111 11111000b			=	-8			
//
	answer = val01 + val02;
	#ifdef _DEBUG
	CIDebug.bitformat("answer = ", answer);
//	CIDebug.bitformat("~7 = ", ~7);
//	CIDebug.vint("case1 >>>",answer,-8);
	#endif

/*
//
//		11111111b			= 255
//	xor	11111000b			= 248
//	-------------------
//		00000111b 			= 7
//
 	answer = 0xff ^ 0xf8;
	#ifdef _DEBUG
	CIDebug.vint("case2 >>>",answer,7);	
	#endif


 	answer = 0xff ^ 200 + 40 + 8;			// 255 ^ (200 + 40 + 8)
	#ifdef _DEBUG
	CIDebug.vint("case3 >>>",answer,7);	
	#endif


 	answer = 200 + 40 + 8 ^ 0xff  ;			// (200 + 40 + 8) ^ 255 
	#ifdef _DEBUG
	CIDebug.vint("case4 >>>",answer,7);	
	#endif


 	answer = 200 + 40 + 8 ^ 200 + 50 + 5 ;		// (200 + 40 + 8) ^ 255 
	#ifdef _DEBUG
	CIDebug.vint("case5 >>>",answer,7);	
	#endif



	answer = 7 << 3;
	#ifdef _DEBUG
	CIDebug.vint("case6 >>>",answer,56);
	#endif


	answer = 1 + 2 + 4 << 3;			// (1 + 2 + 4 ) << 3
	#ifdef _DEBUG
	CIDebug.vint("case7 >>>",answer,56);
	#endif


	answer = 1 + 2 + 4 << 1 + 2;			// (1 + 2 + 4 ) << (1 + 2)
	#ifdef _DEBUG
	CIDebug.vint("case8 >>>",answer,56);
	#endif


	answer = 56 >> 3;
	#ifdef _DEBUG
	CIDebug.vint("case9 >>>",answer,7);
	#endif


	answer = 32 + 16 + 8 >> 3;			// (32 + 16 + 8) >> 3
	#ifdef _DEBUG
	CIDebug.vint("case10 >>>",answer,7);
	#endif

	answer = 32 + 16 + 8 >> 1 + 2;			// (32 + 16 + 8) >> (1 + 2)
	#ifdef _DEBUG
	CIDebug.vint("case11 >>>",answer,7);
	#endif

*/


}
					

