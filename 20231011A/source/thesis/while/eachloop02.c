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
int	loopmax = 30;
int	continue_val = 10;
int	break_val = 7;
void	main()		
{	
	i = 0;	
	answer1 = 0;	
	while (i <= loopmax){
		i++;
		if(answer1 > continue_val)continue;
		answer1=answer1+1;
		if(i > break_val)break;
	}
	#ifdef _DEBUG
		CIDebug.vint("while answer1 >>>",answer1,8);
	#endif


	i = 0;	
	answer1 = 0;	
	do{
		i++;
		if(answer1 > continue_val)continue;
		answer1=answer1+1;
		if(i > break_val)break;
	}
	while (i <= loopmax);
	#ifdef _DEBUG
		CIDebug.vint("dowhile answer1 >>>",answer1,8);
	#endif

	answer1 = 0;	
//	for(i=0,answer1=0;i <= loopmax;i++){
	for(i=0;i <= loopmax;i++){
		if(answer1 > continue_val)continue;
		answer1=answer1+1;
		if(i > break_val)break;
	}
	#ifdef _DEBUG
		CIDebug.vint("for answer1 >>>",answer1,9);
	#endif

		

}		


