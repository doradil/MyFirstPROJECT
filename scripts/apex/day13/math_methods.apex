/**
https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_math.htm
 
  Math class is a class coming from Apex itself
  It has lof of pre-written code about math that we can just use directly

  Mod operator in math allow you to get the remainder of division

  10 / 3 = 3   1 remain
 
 */

Integer num1 = 10;
Integer num2 = 5;
Integer result = num1 / num2;
System.debug('result value is : ' + result);
//
Integer reminder = Math.mod(num1, num2);
System.debug('reminder value is : ' + reminder);

/**
Odd or Even in Math
Odd number is number that will have remainder of 1 when divided by 2
Even number is number that will have remainder of 0 when divided by 2
 */
Integer score = 5;

// store the result of checking the number is even or odd into a Boolean variable
Boolean isEven = Math.mod(score, 2) == 0;
System.debug('isEven value is : ' + isEven);

if (isEven == true) {
  System.debug('Even number');
} else {
  System.debug('Odd number');
}
// what if we do not want to create a variable to store the result of even or odd

if (Math.mod(score, 2) == 0) {
  System.debug('Even number');
} else {
  System.debug('Odd number');
}

//Math.max(number 1, number2)==>return the bigger number
System.debug('which number is bigger : ' + Math.max(111, 99));
System.debug('which number is smaller : ' + Math.min(111, 99));

// Double randomDouble = math.random()*100 ;
// System.debug('randomDouble value is : ' + randomDouble);
// System.debug('randomDouble value is : ' + randomDouble * 100);

// System.debug('Math.random()   value is : ' + Math.random());
// System.debug('Math.random()   value is : ' + Math.random());



Double randomDbl =  Math.random() * 100  ; 
System.debug('randomDbl value is : ' + randomDbl); 
// System.debug('randomDbl value is : ' + randomDbl * 100    ); 

Integer randomInteger =   randomDbl.intValue() ; 
System.debug('randomInteger value is : ' + randomInteger); 

// Double price = 15.5;
// Integer price