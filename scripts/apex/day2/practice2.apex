/*

Extract variables from below sentece 
create variables with proper type 
and use it in debug statement to show in the log 

 My Name is  Your Name .
 I am  X years old 
 I live in XX State 
 I attend class daily (trueOrFalse)
 I am X.XX feet tall
*/
// data type should always start with uppercase
// variable name should always start with lowercase 
// if you have more than one word use camelCase
String studentName     = 'Okan' ;
Integer studentAge     = 35 ;
String studentState    = 'CA' ;
Boolean attendClass    = true ;
Decimal studentHeight  = 5.1 ;

System.debug('My name is ' + studentName  + '.' );
System.debug('I am ' + studentAge + ' years old.' );
System.debug('I live in ' + studentState + ' State.');
System.debug('I attend class daily ' + attendClass);
System.debug('I am ' + studentHeight + ' feet tall');



// it can be done easily as below 
Integer num1 = 10 , num2 = 20 , num3 = 30 ; 

// Relational Operators   > , >= , < , <= , == , != <> 
// it take two items and return true or false result 

// Check if num1 is greater than num2 and return the result into a variable
Boolean isNum1GreaterThanNum2 =  num1 > num2 ;   //false

System.debug('Is Num1 Greater Than Num2 : ' + isNum1GreaterThanNum2);

Boolean isNum2LessThanNum3 =   num2<num3 ;   //true

System.debug('Is Num2 Less Than Num3 : ' + isNum2LessThanNum3 );

// Compare num1 greater then or equal num3 and directly print out the result 
// in this format :Is Num1 Greater Than3 : falseOrTrue

                             // use paranthesis to see (num1>=num 3)as one then concatenate
System.debug('Is Num1 Greater Than3 : ' + (num1 >= num3 )  );

// == cheking for equality of two items , = is assighn operator

// chek if num3 value is 30 or not

System.debug(' Is num3 and num2 equal? : ' + (  num3 == num2 ) );

//cheking for Inequality of 2 items <>   !=

System.debug('Is num1 not equal to num2 : ' +  (num1 != num2));

System.debug('Is num1 not equal to num2 : ' +  (num1 <> num2));

String Language = 'Apex' ;

System.debug('Is the Language apex or not : ' + (language == 'Apex')  );

// Logical Operators : and (&& ) or (||) not  ( ! )
 
Integer num4= 40, num5=50, num6=60;

// is num4more than 20 and less than 45
// store the result into a boolean variable and print it out

Boolean isNum4Between20And45 = (num4 > 20) && (num4 < 45) ; //true
System.debug('is ' +num4 + ' Beetween 20 and 45 : ' + isNum4Between20And45);//true

//Check if num5 greater then 100 or less then 20 ;
Boolean isNum5Greater100OrLessThan20 = (num5>100) || (num5<20);//false

System.debug('Is Num5 Greater 100 Or Les sThan 20 '  +  isNum5Greater100OrLessThan20);



System.debug(isNum4Between20And45 );  //true
System.debug(!isNum4Between20And45 ); //false

// Increment and Decrement Operator ++ --

Integer age = 20 ;

// increase the valueofage by 1
//age = age + 1 ; // 21
//age +=1 ; //21
 ++age ; // 21
 System.debug('age is ' + age);

//decrease the value of age by 1
// age = age -1; //20
// age -= 1 ; //20
  --age ; //20
  System.debug('age agter -- is ' + age ); // 20
    
    
    
    
    
    
    
    





