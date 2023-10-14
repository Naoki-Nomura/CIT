//
// @description:	Samples
// @author:			Naoki Nomura
//
// #define	_DEBUG

#ifdef _DEBUG
	#include	<CIDebug.h>
#endif



int answer1;
int	i;	
void	main()		
{		
	answer1 = 0;	
	while (answer1 <= 9){
		answer1=answer1+1;
	}
	#ifdef _DEBUG
		CIDebug.vint("while answer1 >>>",answer1,10);
	#endif


	answer1 = 0;	
	do{
		answer1=answer1+1;
	}
	while (answer1 <= 9);
	#ifdef _DEBUG
		CIDebug.vint("dowhile answer1 >>>",answer1,10);
	#endif

	answer1 = 0;	
	for(i=0;i <= 9;i++){
		answer1=answer1+1;
	}
	#ifdef _DEBUG
		CIDebug.vint("for answer1 >>>",answer1,10);
	#endif

		

}		


