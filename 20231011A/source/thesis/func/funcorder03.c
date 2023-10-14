//
// @description:	Samples
// @author:			Naoki Nomura
//

int func4(int p1,int p2,int p3,int p4,int p5,int p6,int p7,int p8,int p9,int p10)		
{		
	return	p1+p2+p3+p4+p5+p6+p7+p8+p9+p10;
}		


int func3(int p1,int p2,int p3,int p4,int p5,int p6,int p7,int p8)		
{		
	return	p1+p2+p3+p4+p5+p6+p7+p8;
}		


int func2(int p1,int p2,int p3,int p4)		
{		
	int	val1 = 10;	
	int	val2 = 20;	
	int	val3 = 30;	
	int	val4 = 40;	
	int	val5 = 50;	
	int	val6 = 60;	
	int	val7 = 70;	
	int	val8 = 80;	
	int	val9 = 90;
	val2 = p1;
	val3 = p2;
	val4 = p3;
	val5 = p4;
		
	val1 = func3(1,2,3,4,5,6,7,8);
	
	val2 = func4(1,2,3,4,5,6,7,8,9,10);
	
	return	200;
	
}		


int func1(int p1)		
{	
	int	val1 = 10;	
	int	val2 = 20;	
	int	val3 = 30;	
	int	val4 = 40;
	val2 = p1;
	val1	= func2(1,2,3,4);
	return	100;
}		
	
	

void	main()		
{	
	int	val1 = 10;	
	val1 = func1(1);
}		
	




