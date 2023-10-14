//
// @description:	Samples
// @author:			Naoki Nomura
//
// #define	_DEBUG

#ifdef _DEBUG
	#include	<CIDebug.h>
#endif


typedef struct{
	int	x;
	int	y;
	int	z;
}vec3;


typedef struct{
	int	v;
	int	w;
	int	x;
	int	y;
	int	z;
}vec5;


	
int answer;

void	main()
{
	vec3 a = { 100, -200, 300 };
	vec3 b = { 400, -500, 600 };
	vec5 c = { 700, 800, -900, 1000, 1100 };


	#ifdef _DEBUG

	CIDebug.vint("a.x=", a.x,100);
	CIDebug.vint("a.y=", a.y,-200);
	CIDebug.vint("a.z=", a.z,300);

	CIDebug.vint("b.x=", b.x,400);
	CIDebug.vint("b.y=", b.y,-500);
	CIDebug.vint("b.z=", b.z,600);

	CIDebug.vint("c.v=", c.v,700);
	CIDebug.vint("c.w=", c.w,800);
	CIDebug.vint("c.x=", c.x,-900);
	CIDebug.vint("c.y=", c.y,1000);
	CIDebug.vint("c.z=", c.z,1100);
	
	#endif

	answer = a.x;
	answer = a.y;
	answer = a.z;

	answer = b.x;
	answer = b.y;
	answer = b.z;


	answer = c.v;
	answer = c.w;
	answer = c.x;
	answer = c.y;
	answer = c.z;
	

}
	
					

