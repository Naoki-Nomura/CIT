//
// @description:	Samples
// @author:			Naoki Nomura
//
// #define	_DEBUG

#ifdef _DEBUG
	#include	<CIDebug.h>
#endif


int		p1 = 10;
int		p2 = 20;

void	main()
{
	int		ans;

	ans=0;
	if(p1 < p2)ans=p1;
	else ans=p2;
	#ifdef _DEBUG
	CIDebug.vint("ans  >>>",ans,p1);
	#endif


	ans=0;
	if(p1 < p2){
		ans=p1;
	}
	else{
		ans=p2;
	}
	#ifdef _DEBUG
	CIDebug.vint("ans  >>>",ans,p1);
	#endif



	ans=0;
	ans = p1 < p2 ? p1 : p2;
	#ifdef _DEBUG
	CIDebug.vint("ans  >>>",ans,p1);
	#endif





}





