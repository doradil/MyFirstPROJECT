
/**Loop, is for repeating certain block of code
as long as certain condition is true

there are 4 types of loops 
1. while loop
2. do while loop
3. for loop
4. for each loop

do{
 //repeating code goes here
}while (condition); 
    */


Integer score = 1 ;
//count from 1 to 10
do{
  System.debug(score++);


}while( score < 11);

System.debug('--------');

// countDown 10 9 ..... 1
Integer sushi = 10 ;
do{

 System.debug(sushi--);

}while( sushi>0);