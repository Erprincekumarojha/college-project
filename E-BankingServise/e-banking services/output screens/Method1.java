class Method1 
{
	/*
	   Authe :prince
	   Date:3/17/2019
*/
	 int x;
  int a=10;
  // int a; it it not allow to you make the same name to multiple variable
  int b=20;// it is allow to write here becouse it is declearation allow but assignment cannot be allow
  int c=a+b;// its also a declearatin is allow 

   /* a=10; it is not allow becouse class level connot be assign any values you d this thin in side the 
    1.static block
	2.non-static block
	3.constructer
	4.method 
	other wise you get a error in the programm
   Method1.java:6: error: <identifier> expected
    a=10;
     ^
1 error*/

   /*  System.out.println("prince");   its is not allow any logic directily write int the classs level
	 illegal start of type  you solve this problam using the method and statement paste in side the method 
	 you can solve the problam using the 
	 1.static block
	 2.non-static block
	 3.constructer
	 4.method
	  you paste the statement than cannot be get error in you programm*/ 
    static void m1(){
		System.out.println("prince");
	}
	void m2(int a){// Both above method are allow to becouse of its direct declearation and inplementation done
		// so can't  given the error in our programi it is valid

	}

  //a=20;

 /* static void m1(){

	    static void m2(){

		}
     }*/


	
  /*  m1();
   Direct method call not allow in the class level to call method you can call a method only
   1.static block in static mrthod
   2.constructer in non-static method
   3.non-static block in non-static mrthod
   4.method in non-static method
 */
		
	public static void main(String[] args) 
	{
		System.out.println("Hello World!");
	}
}
