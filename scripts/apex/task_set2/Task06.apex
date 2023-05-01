/** 
6. Write and Apex code that store leadScore as Integer inialize it's value to 50 and hasEmail, hasPhone, hasTwitter as Boolean variables 
   - in 3 separate if statements (without else) do as below : 
   - if hasEmail equal true , increase the value of leadScore by 20
   - if hasPhone equal true , increase the value of leadScore by 18
   - if hasTwitter equal true , increase the value of leadScore by 12
   - at the end , print out 'The lead store is  XX'

   */
Integer leadScore = 50;
Boolean hasEmail = true;
Boolean hasPhone = true;
Boolean hasTwitter = true;
if (hasEmail == true) {
  leadScore += 20;
}
if (hasPhone == true) {
  leadScore += 18;
}
if (hasTwitter == true) {
  leadScore += 12;
}
System.debug('The lead store is ' + leadScore);

// Integer leadScore = 50  ;
// Boolean hasEmail=false;
// Boolean  hasPhone=true;
// Boolean hasTwitter=true ;

// // this is the shortcut if you have only one statement
// // inside your if block
// if(hasEmail)  leadScore += 20 ;

// if(hasPhone)  leadScore += 18 ;

// if(hasTwitter)  leadScore += 12 ;

// System.debug('The lead socre is ' + leadScore );
System.debug('------------------'); 

/*6.1 Write an Apex code that store contactEmail and mailingState as String 
   - check if a Contact's email is not null (!=null) and it's mailing state is California, 
   - if both conditions are true, print out 'Valid California Contact'
   */

   String contactEmail = 'Dora33@gmail.com';
   String mailingState = 'California';
   if( contactEmail !=null &&  mailingState == 'California'){
      
      System.debug( 'Valid California Contact'); 
       }
      
   