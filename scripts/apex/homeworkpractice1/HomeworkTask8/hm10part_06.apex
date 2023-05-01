
// 6. Create a Date variable with name birthDay and assign the value that represent any date you want.
Date birthDay = Date.newInstance(1990, 3, 1);

//    - print out the day portion of the date (check the doc for right method from Date Class)
System.debug('Birth Day: ' + birthDay); 
//    - print out the month portion of the date (check the doc for right method)
System.debug('day: ' + birthDay.day()); 
//    - print out the year portion of the data (check the doc for right method)
System.debug('month: ' + birthDay.month()); 
//    - print out the result of checking if the year fall into leapYear (check the doc for right method)
System.debug('year: ' + birthDay.year()); 
//    - print out the monthsBetween today and birthDay as number representation of how many month as Integer(check the doc)
System.debug('Leap year: ' + Date.isLeapYear(1990)); 
//    - print out the daysBetween today and birthDay as number representation of how many days as Integer(check the doc)
System.debug('months between: ' + birthDay.monthsBetween(Date.today())); 
System.debug('days between : ' + birthDay.daysBetween(Date.today()) ); 