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
	int i,j,k;
	answer1 = 0;
	for(i = 0; i < 10; i++) {
		for(j = 0; j < 10; j++) {
			for(k = 0; k < 10; k++) {
				answer1++;
				if(answer1 > 50){
					goto exit;
				}
			}
		}
	}

exit:
	answer2 = answer1;

	#ifdef _DEBUG
	CIDebug.vint("answer1 >>>" ,answer1,51);
	#endif


}		


