/**
Count from  1 - 10 using for loop
print the count multplied by 5
output should like this :
1x5=5
2x5=10
.........

 */
  for(Integer count=1; count<=10; count++){
   System.debug(count + ' x 5 = ' + (count*5) );
  }

  /**
  continue from above code,
  Above code work great if you just want to get 
  the multio=plication 
  table of 5 , we want to 
  be able to rovide any number not just 5 
  and generate
   multilication table of any number
  
  
   */
System.debug('------');
// Integer num = 4 ;
// Integer count = 7 ;

//in below foermat
//first number you get from variable count
//result you get by multiplying 2 numbers
//eventully generate this output
//in below format
// 1 x 5 = 5
//System.debug(count + ' x' + num + ' = ' + (count * num ));

Integer num = 2 ;
for(Integer count = 1 ;count<=10 ; count++){

System.debug(count + ' x ' + num + ' = ' + (count * num ));
}


System.debug('------');
/**
give a number , print out below

LuchyNumber + 1 + the result
LuchyNumber + 2 + the result
LuchyNumber + 3 + the result
...
LuchyNumber + 10 + the result

 */

 Integer LuchyNumber = 50 ;
/** 
7+1=8
7+2=9
7+3=10
7+4=11
7+5=12
....
7+10=17
*/


for(Integer count = 1 ; count<=10; count++){
    // 7 + 1 = 8
    System.debug(LuchyNumber + ' + ' 
                 + count + ' = '
                  + (LuchyNumber + count )  );
}




