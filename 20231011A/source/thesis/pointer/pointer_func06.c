//
// @description:	Samples
// @author:			Naoki Nomura
//
// #define	_DEBUG

#ifdef _DEBUG
	#include	<CIDebug.h>
#endif

//int	func1(int ,int );
//int	func2();
//int	func3();
//int	func4();

int	val=100;

int	(*pfaray[3])() = {
	func1,
	func2,
	func3
};


int	(*pf)() = func4;



void	main()
{	


//	pfaray[0] = func1;
//	pfaray[1] = func2;
//	pfaray[2] = func3;


	val = (*pfaray[0])(5,6);
	#ifdef _DEBUG
		CIDebug.vint("1.val >>>",val,11);
	#endif

	val = (*pfaray[1])();
	#ifdef _DEBUG
		CIDebug.vint("1.val >>>",val,300);
	#endif

	val = (*pfaray[2])();
	#ifdef _DEBUG
		CIDebug.vint("1.val >>>",val,400);
	#endif
	
	val = (*pf)();
	#ifdef _DEBUG
		CIDebug.vint("4.val >>>",val,500);
	#endif
	

}


int	func1(int p1 ,int  p2){
	return	p1 + p2;
}


int	func2(){
	return	300;
}

int	func3(){
	return	400;
}

int	func4(){
	return	500;
}

