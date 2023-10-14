//
// @description:	Samples
// @author:			Naoki Nomura
//
// #define	_DEBUG

#ifdef _DEBUG
	#include	<CIDebug.h>
#endif



int err;		
void	main()		
{		
	err = 2;


	if(err == 1){
		goto error;
	}
	else if(err == 2){
		goto error;
	}
	else if(err == 3){
		goto error;
	}


	return;

error:

	#ifdef _DEBUG
	CIDebug.vint("err >>>" ,err , 2);	
	#endif

	return;

}		

