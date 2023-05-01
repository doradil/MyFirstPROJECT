/**
Create a list of 10 decimal numbers
in 2 separate loops
in firs loop
iterate over the list and print out the each items
skip item number 3 and 7while printing
in second loop
iterate over the list and print out the each items
skip item number 3 and 7while printing
break out of the loop if the number is more than 100


 */
List<Decimal> numbers = new List<Decimal> {
    1.11,
    22.22,
    100.99,
    3.33,
    14.44,
    200.00,
    12.50,
    8.88,
    9.99,
    50.00
    };
    
//print out the last item value without hard coding
// 1. first get the last item index, it's always 1 less than item count

Integer indexOFLastItem = numbers.size()-1;
System.debug('index OF Last Item ' + indexOFLastItem);
// then print out the lat item value using get method

System.debug('last Item value ' + numbers.get(indexOFLastItem));

//  in firs loop
// iterate over the list and print out the each items
// skip item number 3 and 7while printing

for(Integer index=0; index<numbers.size(); index++){
if(index==2 || index==6){
  
  }
  System.debug('index # ' +index+ ' : ' +numbers.get(index));
}
/**in second loop
iterate over the list and print out the each items
skip item number 3 and 7while printing
break out of the loop if the number is more than 100
*/
for(Decimal eachNum : numbers){
    System.debug(eachNum>100);
        break ;
    


System.debug(eachNum);
}