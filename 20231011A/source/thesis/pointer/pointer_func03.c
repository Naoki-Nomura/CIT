//
// @description:	Samples
// @author:			Naoki Nomura
//
// #define	_DEBUG

#ifdef _DEBUG
	#include	<CIDebug.h>
#endif

// int	func1();
// int	func2();
// int	func3();

int	val=100;
int	(*pfaray[3])();

void	main()
{	


	pfaray[0] = func1;
	pfaray[1] = func2;
	pfaray[2] = func3;


	val = (*pfaray[0])();
	#ifdef _DEBUG
		CIDebug.vint("1.val >>>",val,200);
	#endif

	val = (*pfaray[1])();
	#ifdef _DEBUG
		CIDebug.vint("1.val >>>",val,300);
	#endif

	val = (*pfaray[2])();
	#ifdef _DEBUG
		CIDebug.vint("1.val >>>",val,400);
	#endif

}


int	func1(){
	return	200;
}

int	func2(){
	return	300;
}

int	func3(){
	return	400;
}

