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

int		val=100;

void	(*pfunc)();


void main()
{	



//	pfunc = func1;
//	pfunc = func2;
	pfunc = func3;
	(*pfunc)();


#ifdef _DEBUG
	CIDebug.vint("1.val >>>",val,400);
#endif

}


void	func1(){
	val = 200;
}

void	func2(){
	val = 300;
}

void	func3(){
	val = 400;
}


