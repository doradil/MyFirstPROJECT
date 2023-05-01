
 //This is how we can comment
//lets get started
/*
 This is how we can write
 multiline comment
*/

/*
In Apex we wrap up
text,also known as String insite single quote
*/

 system.debug('Hello World');

// APEX is Case Insensitive language
sysTem.deBug('More hello');

// If the single quote need to be used inside String
// It will accidentally end the string 
// you can add backslash right in front of it 
// to instruct computer not to treat it as ending of the string
// just treat it as part of the text
system.debug('Lets learn variable');

//Creating and using variable
//DataTipe variableName = someValueHere

String name = 'Dildora Ata';

// print the value of the variable in the log
 
System.debug(name);
//Concatenation is 
//combining one or more Strings together

//print My Name is :theValueOfNameVariable

system.debug('My Name is:'+ name);


//givenew value for variable you already created earlier
name = 'Dildora';
system.debug('My new name is ' + name);

//variable Data tye that can store Number

integer score = 66 ; 
//print passing score is theValueOfTheScoreVariable
system.debug('Passing score is '+ score);

//score = 86;
system.debug(  'The result is' + score + 20 ); //6620

system.debug(  'The result is' + (score + 20)  ); //86

//Variable Data Type that can store fractional Number
Decimal pi = 3.14 ;
system.debug('The value of pi :' + pi );

//Variable Data Type that can store true or false
Boolean passed = true;
system.debug('Value of Passed boolean variable ' + passed);
//changed the value to false and print it out
passed = false ;
system.debug('Value of Passed boolean variable ' + passed); 

//Quick explanation on some Technical Jargon 
//Declaring variable
 Integar age ;

//Assighn the value of the variable
age = 20

//Declaring variable and initelizing its value 
Integar amount = 100 ;

// re-assighning value 
amount = 20 ;

//Null as a value, null means there is no value

//integer count ;     //if a variable is not assighn to any value
                      //is will get null value
integer count = null ; //here we are explicitly assighning to null
System.debug('The value od count is null');

// re-Assign the value of count variable to the value of amount variable 
count = amount  ;
System.debug('The value of count is ' + count);

// re-Assign the value of count variable
// to the value of amount variable + 1000
count = amount + 1000 ; //1200
System.debug('New Value of count is ' + count);

// Operator + - */
Integer num1 = 100 ;
Integer num2 = 20 ;
Integer result ;
// Use these 2 variable to print out below result 
/*
The addetion result between num1 and num2 resultGoesHere
The subtraction result between num1 and num2 resultGoesHere
The multiplication result between num1 and num2 resultGoesHere
The division result between num1 and num2 resultGoesHer
*/
// addetion
result = num1 + num2 ;

System.debug('The addetion result between ' + num1 + ' and ' + num2 + ' is  ' + result) ;

//subtraction
result = num1 - num2 ;
System.debug ('The substraction result between'+  num1 + ' and ' + num2 + ' is  ' + result);

// multiplication
result = num1 * num2 ;
System.debug ('The multiplication result between'+ + num1 + ' and ' + num2 + ' is  ' + result);


// division 
result = num1 / num2 ; 
System.debug('The division result between ' + num1 + ' and ' + num2 + ' is ' +  result );














