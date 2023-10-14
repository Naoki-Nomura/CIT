//
// @description:	Samples
// @author:			Naoki Nomura
//
// #define	_DEBUG

#ifdef _DEBUG
	#include	<CIDebug.h>
#endif

typedef struct{
	int	x;
	int	y;
	int	z;
}vector;





void	main() {					

	vector 	test;
	test.x = 100;
	test.y = 200;
	test.z = 300;


	#ifdef _DEBUG
		CIDebug.vint("vector.x >>>",test.x,100);
		CIDebug.vint("vector.y >>>",test.y,200);
		CIDebug.vint("vector.z >>>",test.z,300);
	#endif


}					




