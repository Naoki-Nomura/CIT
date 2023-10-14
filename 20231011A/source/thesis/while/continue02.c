//
// @description:	Samples
// @author:			Naoki Nomura
//
// #define	_DEBUG

#ifdef _DEBUG
	#include	<CIDebug.h>
#endif



int ary[10];		
int i;		
void	main()		
{		

	ary[0] = 1;
	ary[1] = 2;
	ary[2] = 3;
	ary[3] = 4;
	ary[4] = 5;
	ary[5] = 6;
	ary[6] = 7;
	ary[7] = 8;
	ary[8] = 9;
	ary[9] = 10;
	i = -1;

	#ifdef _DEBUG
		CIDebug.msg("do not display even numbers");
	#endif
	
	while (i < 9){	
		i++;
		if(ary[i] % 2 == 0)continue;

		#ifdef _DEBUG
			// CIDebug.vint("i >>>",i,i);
			CIDebug.vint("a1 >>>",ary[i],ary[i]);		// 偶数は表示しない
		#endif


	}	

}		


