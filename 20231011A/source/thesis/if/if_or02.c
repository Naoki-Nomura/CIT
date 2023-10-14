//
// @description:	Samples
// @author:			Naoki Nomura
//
// #define	_DEBUG

#ifdef _DEBUG
	#include	<CIDebug.h>
#endif

int	val1 = 1;
int	val2 = 2;
int	val3 = 3;
int	val4 = 4;
int	val5 = 5;
int	val6 = 6;
int	val7 = 7;
int	val8 = 8;
int	val9 = 9;
int	answer1 = 0;
void	main()		
{		
	answer1 = 0;
	
	if(
		val1 != 1 ||
		val2 != 2 ||
		val3 != 3 ||
		val4 != 4 ||
		val5 != 5 ||
		val6 != 6 ||
		val7 != 7 ||
		val8 != 8 ||
		val9 != 9
	){
		answer1 = 10;
	}
	else{
		answer1 = -10;
	}	

	#ifdef _DEBUG
		CIDebug.vint("answer1 >>>" ,answer1,-10);
	#endif



}		

