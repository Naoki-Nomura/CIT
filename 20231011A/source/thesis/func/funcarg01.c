//
// @description:	Samples
// @author:			Naoki Nomura
//
// int func1(int);
// int func2(int,int,int,int,int,int,int,int);


int func1(int p1)		
{	
	int	val1 = 10;	
	int	val2 = 20;	
	int	val3 = 30;	
	int	val4 = 40;
	val2 = p1;
	val1	= func2(1,2,3,4,5,6,7,8);
	return	100;
}		
	
	
int func2(int p1,int p2,int p3,int p4,int p5,int p6,int p7,int p8)		
{		
	int	val1 = 10;	
	int	val2 = 20;	
	int	val3 = 30;	
	int	val4 = 40;	
	int	val5 = 50;	
	int	val6 = 60;	
	int	val7 = 70;	
	int	val8 = 80;	
	val1 = p1;
	val2 = p2;
	val3 = p3;
	val4 = p4;
	val5 = p5;
	val6 = p6;
	val7 = p7;
	val8 = p8;
		
	
	return	200;
	
}		


void	main()		
{	
	int	val1 = 10;	
	val1 = func1(1);
}		
	

