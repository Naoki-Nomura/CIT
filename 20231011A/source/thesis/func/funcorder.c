//
// @description:	Samples
// @author:			Naoki Nomura
//
// #define	_DEBUG

#ifdef _DEBUG
	#include	<CIDebug.h>
#endif


// void	func1();
// void	func2();	
// void	func3();	


void	func1()		
{		
#ifdef _DEBUG
	CIDebug.msg("func1()");
#endif
	func2();
}		
	
	
void	func2()		
{		
#ifdef _DEBUG
	CIDebug.msg("func2()");
#endif
	func3();
}		


void	main()		
{		
#ifdef _DEBUG
	CIDebug.msg("main()");
#endif
	func1();
}		
	

void	func3()		
{		
#ifdef _DEBUG
	CIDebug.msg("func3()");
#endif
}		

