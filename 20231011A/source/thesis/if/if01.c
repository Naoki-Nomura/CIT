//
// @description:	Samples
// @author:			Naoki Nomura
//
// #define	_DEBUG

#ifdef _DEBUG
	#include	<CIDebug.h>
#endif

int answer1;		
int answer2;		
void	main()		
{		
	answer1 = 0;
	answer2 = 5;

	if(answer1 == 0){
		answer1 = 1;
	}

	#ifdef _DEBUG
	CIDebug.vint("answer1 >>>" ,answer1,1);
	#endif


	answer1 = 2;
	if(answer1 == 0){
		answer1 = 1;
	}
	else{
		answer1 = 3;
	}



	#ifdef _DEBUG
	CIDebug.vint("answer1 >>>" ,answer1,3);
	CIDebug.vint("answer2 >>>" ,answer2,5);
	#endif


}		

