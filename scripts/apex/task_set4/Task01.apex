/**
task 4-1
Write a program that calculates the sum of all odd numbers from 1 to 100 using a for loop.
(try out the same with while loop and do while loop as practice)
    
    // practice List using similar approach

 */
 System.debug('---for---');
Integer sum = 0;

for(Integer count = 1; count <= 100; count+=2){
    sum+=count;

}
System.debug('sum of all odd numbers from 1 to 100 : '+sum);

System.debug('---while---');
sum = 0;
Integer count=1;
while(count <= 100){

    sum += count;
    count += 2;
}
System.debug('sum of all odd numbers from 1 to 100 : '+sum);

System.debug('---do While---');
sum = 0;
count=1;
do{
    sum += count;
    count += 2;
}
while(count <= 100);
System.debug('sum of all odd numbers from 1 to 100 : '+sum);

System.debug('---List---');
List<Integer> oddNumbers =new List<Integer> ();

sum =0;
for(Integer count = 1; count <= 100; count+=2){
    oddNumbers.add(count);
    sum += count;
}

System.debug(oddNumbers);
System.debug('sum of all odd numbers from 1 to 100 : '+sum);

// ---for---
// sum of all odd numbers from 1 to 100 : 2500
// ---while---
// sum of all odd numbers from 1 to 100 : 2500
// ---do While---
// sum of all odd numbers from 1 to 100 : 2500
// ---List---
// (1, 3, 5, 7, 9, 11, 13, 15, 17, 19, ...)
// sum of all odd numbers from 1 to 100 : 2500