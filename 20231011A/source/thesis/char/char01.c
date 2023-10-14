//
// @description:	Samples
// @author:			Naoki Nomura
//
// #define	_DEBUG

#ifdef _DEBUG
	#include	<CIDebug.h>
#endif

void	main()
{

	char 	a;
	char 	b;
	char 	c;
	char 	d;
	char 	e;

	a = '1';
	b = '2';
	c = '3';
	d = '4';
	e = '5';

	#ifdef _DEBUG
	CIDebug.vchar("a=", a,'1' );
	CIDebug.vchar("b=", b,'2' );
	CIDebug.vchar("c=", c,'3' );
	CIDebug.vchar("d=", d,'4' );
	CIDebug.vchar("e=", e,'5' );
	#endif

}

