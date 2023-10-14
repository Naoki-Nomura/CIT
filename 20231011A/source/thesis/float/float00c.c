//
// @description:	Samples
// @author:			Naoki Nomura
//
// #define	_DEBUG

#ifdef _DEBUG
	#include	<CIDebug.h>
#endif


int     isrc = 3;
float result;
void	main() {
	result = isrc;
	

	#ifdef _DEBUG
		CIDebug.vfloat("result >>>",result,3.0f);
	#endif

}
