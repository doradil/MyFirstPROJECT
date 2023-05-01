String studentName     = 'Okan' ;
Integer studentAge     = 35 ;
String studentState    = 'CA' ;
Boolean attendClass    = true ;
Decimal studentHeight  = 5.1 ;

System.debug('My name is ' + studentName  + '.' );
System.debug('I am ' + studentAge + ' years old.' );
System.debug('I live in ' +studentState + 'State.');
System.debug('I attend class daily ' + attendClass);
System.debug('I am ' + studentHeight + ' feet tall');

System.debug('My name is ' + studentName 
             + '. I am ' + studentAge + ' yers old. ' 
             + 'I live in ' +studentState + ' State.'
             + 'I attend class daily ' + attendClass
             + 'I am ' + studentHeight + ' feet tall ' );
//Assignment Operator =
//Compound assignment operator +=, -=,*=, /=
//Increment and Decrement Operator ++ --

//Relational (Comparision) Operators >,>=,<,<=,==,!=,<>
//compare two items and return Boolean result (true|false)
//Logical Operators && (And)|| (Or) !(Not)

//Shortcut for declaring and assigining multiple variables of same type
Integer num1 =100, num2 = 200, num3 =300 ;

Decimal price1 = 699, price2 = 799.99,price3 = 1100.99 ;

//print out the result of pricel is greater then price3

System.debug(' Is pricel is greater then price3 : ' + (price2 > price3) );

//store the result of pricel greater then price2 and price2 les then price3 
// into a Boolean variable and print it out

Boolean result1 = (price1 > price2) && (price2 < price3);
System.debug('result of pricel greater then price2 and price2 les then price3 : '
             + result1);

//Increament and Deacreament operators to increase decrease the value by one

// ++ used in the beginning of the variable is called pre - increment ++ score
// ++ used in the end of the variable is called post -increament score ++
// -- used in the beginning of the variable is called pre - increment --
// -- used in the end of the variable is called post -increament score --


Integer count = 10 ;

System.debug('value of count ' + count );

System.debug('value of ++count ' +   ++count);//11
System.debug('value of --count ' +   --count);//10

System.debug('value of count++ : ' +    count++); //10
System.debug('the current value of count '+  count); //11

System.debug('value of count-- : ' +   count--); // 11right now Next time 10
System.debug('the current value of count '+  count); //10

// curent value of count is 10
System.debug(count++   + '------'+ count    );  //10------11
//current value of count is 11
//System.debug(count--  - '-------' + count   );   //11------10


//curent value of count is 10
//System.debug(++count +------+ count); //11----11
// current value of count is 11
//System.debug(--count + ------+ count);  //10---10



//Condetional statement : condetianally execute part

Integer examScore = 77  ;


//if exam score is more then 66
// show debug message passed , other message congrats 
// otherwise show failed,and try again later
/* if statement without else
if(  examScore > 66){
    System.debug('Passed');
}
*/

if(examScore> 66 ){
    System.debug('Passed');
    System.debug('Congrats');
}else {
    System.debug('Failed');
    System.debug('Try again Later');
}

//Create a String variable to store studentName
// give a value
//if the value equal Fady, print clockmaster
//else print no Break
//String studentName = 'Osman' ;

if(studentName == 'Fady '){
    System.debug('clockmaster, Break Time!!');
}else{
    System.debug('No Break ');
    
}


//Create a variables :
//annualRevenue as Integer and initialize its a value
//reting as String

/* If the annualRevenue greater then 100000
assign the value of rating to hot otherwise assig the value of reting to cold
printout the rating variable outside your if statement
*/
/**
Integer annualRevenue = 500 ;
String rating ;

if(annualRevenue > 100000){
    rating = 'Hot';
}else{
   rating ='Cold'; 
}

System.debug('Reting is ' + rating );
**/

 // Ternary operator can be used to
//conditionally assign the value of a variable
//DataType yourVariableName =(condetion) ? TrueValue : FalseValue; 

Integer annualRevenue = 5000;
String rating = (annualRevenue > 100000) ? 'hot' : 'cold';

System.debug('Rating is ' + rating) ;

//declareand initiaze a variable called scorel
//declare a variable called examResult
//assign the value of examResut according to the scorel > 66 or not
Integer scorel = 67 ;
String examResult = (scorel>66)? 'Pass' : 'Fail' ;
System.debug('Exam Result : ' + examResult );


//declare and initiaze a variable called salary as Integer
//declare a Double variable called taxRate
//assign the value of taxRate according to below condition
//if the salery is greater then 100k , taxRate is 0.3 else 0.15

Integer salary = 130000;
//Double taxRate = (sallery > 130000) ? 0.3 : 0.5;
/*
If(salary>100000){
    taxRate = 0.3;
}else 
{
    taxRate = 0.15;
}
    System.debug('tacRate ' + )

*/
Double taxRate = (salary> 100000 ) ? 0.3 : 0.15 ;


Integer score2 = 99 ;
if( score2 > 100 || score2 <0 ){
    System.debug('Invalid Score');
}else if(score2 > 90 ){
    System.debug('You got A');
}else if(score2 > 80){
    System.debug('You got B');
}else if(score2 > 70){
    System.debug('You got C');
}else{
    System.debug('Try Harder');
}


//declare a Stringvariable called season
//and initialize its value
/*
if its spring print Go Camping
if its summer print Go Swimming
if its fall print go Pick Pumkin
if its winter print Go to sleep
if nothing match print invalid season
*/

//String season = 'summer'
    
    
    
    
    
    






































































    
    
    
    
    





