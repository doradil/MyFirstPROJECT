/**# Tasks Set 8 : 
1. Write an Apex code that 
   - create a variable to store 1 Random double between 0 to 100 Math.random()*100
   - print it out 
   - print 'pass' if the number is greater than 65
   - print 'A+' if the number is between 95-100
   - run multiple time to observer the result

2. Write an Apex code that create 1 Random double between 0 to 100
   - print it out 
   - if the number is even -> print 'even number!!!' 
   - if it can be divided by 5 with no remainder -> print 'cool number'
   - if it can be divided by 7 with remainder 3  -> print 'cooler number' 

3. Write an Apex code that store list of 10 Integers 
   - print out all odd numbers
   - get the count of the odd numbers and print it out
   - get the sum of the odd numbers and print it out 

4. Write an Apex code that create 2 Random Integer variables 
   - use Math.random()*100 to assign random values to both of them
     - (make sure to convert the double value to Integer)
   - print both variable values 
   - print the larger number value

5. Write an Apex code that 
   - print 10 random Integer values between 1-1000 in 10 lines (loop)

6. Inspired by above code, 
   - Write an Apex code that 
     - store 10 random Integer values between 1-100 into a List of Integer
   - print out the value 
   - get the sum of the numbers 
   - get the average of the numbers

7. Create a List of 10 String with your own values
   - create a Integer variable called randomIndex
   - assign the value to random Integer between (between 0-9)
   - use above index to print out the value at that index
   - (wait did we just crack how lottery system work?)  

8. Write an Apex code that create List of 10 Integers
   - create a variable called largestValue and assign it to first item in the list
   - use for each loop to loop through each item
   - inside the loop re-assin largestValue to 
     - the result of Math.max(largestValue, each)
   - print out largestValue outside the loop
   - and that's how we can get max values in List of Integers
   - try to change the values of List item and run again

9. inspired by above, now use same approach to find smallestValue in List of 10 Integers
   - create a variable called smallestValue and assign it to first item in the list
   - use for each loop to loop through each item
   - inside the loop re-assin smallestValue to 
     - the result of Math.min(smallestValue, each)
   - print out smallestValue outside the loop
   - and that's how we can get min values in List of Integers
   - try to change the values of List item and run again 

10. Write an Apex code that create a role List of 10 String 
   - join each item by space and store it into a String variable joined text 
     - and print it out
   - loop through the list 
     - print out each item along with character count in each item
     - in this format : 'admin has 5 characters'

   - loop through the list 
     - if it contains('dev') print out the items in UPPERCASE
     - if it contains('admin') print out the items removing the word admin : str.remove('admin')
*/
//1. Write an Apex code that create List or Array of 10 Integer values.
//  - remove duplicate and print it out
//  - print out the unique item count and difference between total
// list item count

List<Integer> list1 = new List<Integer>{ 1, 2, 1, 4, 2, 6, 1, 8, 3, 10 };

Set<Integer> set1 = new Set<Integer>(list1);
System.debug(set1);

System.debug('Number of unique elements is ' + set1.size());

System.debug('Difference is ' + (list1.size() - set1.size()));

System.debug('3task-------------------');
/*3. Write an Apex code that create List or Array of 10 Integer values. 
   - create another List or Array and
   - store the items in reverse order
   - print it out */

List<Integer> list11 = new List<Integer>{ 5, 87, 45, 67, 93, 65, 90, 9, 26 };
List<Integer> reverse = new List<Integer>();

for (Integer i = list11.size() - 1; i >= 0; i--) {
  reverse.add(list11[i]);
}
//reverse {}
System.debug(reverse);
List<Integer> listnew = new List<Integer>();
for(Integer i=0; i<reverse.size() ;i++) {
    listnew.add(reverse[i]);
    
}
System.debug('listnew value is : ' + listnew); 










System.debug('4task-------------------');
/*4. Write an Apex code that create List or Array of 10 String values
   - create a empty Set of String 
   - store all the string that is not equal to admin or developer in it
   - print out the size and items in loop  */

List<String> strList = new List<String>{
  'Admin',
  'Architect',
  'Tester',
  'QA',
  'Analyst',
  'Developer',
  'App Builder',
  'PO',
  'Scrum Master',
  'Consultant'
};

Set<String> strSet = new Set<String>();

for (String each : strList) {
  if (each != 'Admin' && each != 'Developer')
    strSet.add(each);
}

System.debug('size of the set: ' + strSet.size());

for (String each : strSet) {
  System.debug(each);
}

System.debug('5task-------------------');

/*5. Write an Apex code that create List or Array of 5 Integer values. 
   - double the value of each item 
   - for example {1,4,6,4,6} => {2,8,12,8,12} */

List<Integer> list111 = new List<Integer>{ 1, 4, 6, 4, 6 };

//we can not use for each loop if we want to modify the values
// for(Integer each : list111) {
//    each*=2;
// }

// System.debug(list111);

for (Integer i = 0; i < list1.size(); i++) {
  list1[i] *= 2;
}

System.debug(list1);

System.debug('6task-------------------');

/*6. Write an Apex code that create List or Array of 5 String values
   - add the word sf+index at the end of each element
   - {'Anakin','Obivan','Yoda','Windu','Ahsoka'} => 
   - {'Yoda sf1' 'Anakin sf2','Obivan sf3','Windu sf4','Ahsoka sf5'} */

List<String> strList = new List<String>{
  'Anakin',
  'Obivan',
  'Yoda',
  'Windu',
  'Ahsoka'
};

for (Integer i = 0; i < strList.size(); i++) {
  strList[i] = strList[i] + ' sf' + i;
}

System.debug(strList);

System.debug('7task-------------------');

/*7. Write an Apex code that create List or Array of 8 String values
   - store the index of 2 items in the middle into 2 variables mid1, mid2
   - now imagine you unknown (even) number of items in the list and find out a way to dynamically find the index of item in the middle 
     - if you have 8 items : number 4 and 5 items are in the middle
     - if you have 18 items : number 8 and 9 items are in the middle and so on
     - no loop needed here
   - print out the value of items in the middle */

List<String> strList = new List<String>{
  'Ercan',
  'Fatih',
  'Nora',
  'Natyra',
  'Cavidan',
  'Sean',
  'Leke',
  'Seyfullah'
};

Integer mid1 = strList.size() / 2;
Integer mid2 = strList.size() / 2 - 1;

System.debug(
  'the items in the middle are ' + strList[mid1] + ' and ' + strList[mid2]
);
System.debug('8task-------------------');

/*8.  Write an Apex code that create 2 Set of String with 5 values
   - update set1 to only retain the elements exists in both set1 and set2
      -  HINT : retainAll method */

Set<String> set1 = new Set<String>{
  'chair',
  'table',
  'apple',
  'scrabble',
  'towel'
};
Set<String> set2 = new Set<String>{
  'chair',
  'table',
  'orange',
  'season',
  'month'
};

Boolean isChanged = set1.retainAll(set2);

System.debug(isChanged);

System.debug(set1);

System.debug('9task-------------------');

/*9. Write an Apex code that create Set of 10 Integer
   - create a variable called average 
   - calculate the average  sum/item count and print it out
   - Create empty List of Integer
   - store only items above average in above Set
   - removeAll items that below average from the Set  */

Set<Integer> set1 = new Set<Integer>{ 10, 20, 30, 40, 50, 60, 70, 80, 90, 100 };

Decimal avg;
Integer sum = 0;

for (Integer each : set1) {
  sum += each;
}

avg = sum / set1.size();

List<Integer> list1 = new List<Integer>();

for (Integer each : set1) {
  if (each > avg)
    list1.add(each);
}

System.debug(list1);

System.debug('10task-------------------');
/*10. Write an Apex code that create List of 10 Integer values as scoreList
    - get the count of numbers less than 0 or greater than 100
    - in separate loop, update the value of items as below
      - if the Integer less than 0 update it to 0 
      - if the Integer more than 100 update it to 100
    - HINT : Array syntax is much simpler when it comes to update */


List<Integer> scoreList =new List<Integer>{-100,-50,-20,0,5,68,90,100,200,450};

Integer count=0;

for(Integer each : scoreList) {
  if(each<0||each>100)
  count++;
}
  System.debug(count); 


for(Integer i=0; i<scoreList.size() ;i++) {
  if(scoreList[i]<0)
    scoreList[i]=0;
  if(scoreList[i]>100)
    scoreList[i]=100;

}
System.debug(scoreList); 

System.debug('8task----------1---------');

/*Given  2 Integer values : 
Integer num1 = 10 ; 
Integer num2 = 20 ;

Swap the value of num1 , num2 
so num1 become 20 and num2 become 10.
HINT : you need a temp variable for temporarily storing value of one number. 
*/

// num1=num2   num1->20  num2->20
// num2=num1

Integer num1 = 10 ; 
Integer num2 = 20 ;
Integer temp =num1;

num1=num2;
num2=temp;

System.debug('num1 '+num1); 
System.debug('num2 '+num2);


System.debug('8task----------2---------');
/*Write an Apex code that create 1 Random double between 0 to 100
   - print it out 
   - if the number is even -> print 'even number!!!' 
   - if it can be divided by 5 with no remainder -> print 'cool number'
   - if it can be divided by 7 with remainder 3  -> print 'cooler number'  */


Double num = Math.random()*100;
System.debug(num); 

Integer var=num.intValue();

//Integer var=Math.randim()*100.intValue();

if(Math.mod(var,2)==0)
   System.debug(var+' is even number');

if(Math.mod(var,5)==0)
   System.debug(var+' is cool number');

if(Math.max(var,7)==3)
   System.debug(var+' is cooler number');

   System.debug('8task----------3---------');

   /*3. Write an Apex code that store list of 10 Integers 
   - print out all odd numbers
   - get the count of the odd numbers and print it out
   - get the sum of the odd numbers and print it out */

List<Integer> list1 = new List<Integer>{34,67,45,89,96,34,27,97,3,83};

Integer count=0, sum=0;

for(Integer each : list1) {
   if(Math.mod(each,2)==1){
      System.debug(each);
      count++;
      sum+=each; 
   }
}

System.debug('count of odd numbers '+ count); 
System.debug('sum of odd numbers '+ sum); 
 System.debug('8task----------4---------');
 /*4. Write an Apex code that create 2 Random Integer variables 
   - use Math.random()*100 to assign random values to both of them
     - (make sure to convert the double value to Integer)
   - print both variable values 
   - print the larger number value*/

Integer var1 = (Math.random()*100).intValue();
Integer var2 = (Math.random()*100).intValue();

System.debug(var1); 
System.debug(var2);
System.debug(Math.max(var1, var2)); 

System.debug('8task----------5---------');
//5. Write an Apex code that 
//   - print 10 random Integer values between 1-1000 in 10 lines (loop)



for(Integer i=0; i<10 ;i++) {

    Double var=Math.random()*1000;
    System.debug(var.intValue()); 

}

System.debug('8task----------6---------');

/*6. Inspired by above code, 
   - Write an Apex code that 
     - store 10 random Integer values between 1-100 into a List of Integer
   - print out the value 
   - get the sum of the numbers 
   - get the average of the numbers */

List<Integer> list1 = new List<Integer>();

Integer sum=0;
Integer num;

for(Integer i=0; i<10 ;i++) {
    num=(Math.random()*100).intValue();
    list1.add(num);
    sum+=num;
}

System.debug(list1); 
System.debug('sum '+sum);
System.debug('average '+sum/10); 


System.debug('8task----------7---------');

/*7. Create a List of 10 String with your own values
   - create an Integer variable called randomIndex
   - assign the value to random Integer between (between 0-9)
   - use above index to print out the value at that index
   - (wait did we just crack how lottery system work?)
 */

List<String> strList = new List<String>{
  'Admin',
  'Architect',
  'Tester',
  'QA',
  'Analyst',
  'Developer',
  'App Builder',
  'PO',
  'Scrum Master',
  'Consultant'
}; 

Integer randomIndex=(Math.random()*10).intValue(); 
System.debug(randomIndex); 
System.debug(strList[randomIndex]); 
//strList.get(randomIndex)

System.debug('8task----------8---------');

/*8. Write an Apex code that create List of 10 Integers
   - create a variable called largestValue and assign it to first item in the list
   - use for each loop to loop through each item
   - inside the loop re-assin largestValue to 
     - the result of Math.max(largestValue, each)
   - print out largestValue outside the loop
   - and that's how we can get max values in List of Integers
   - try to change the values of List item and run again */

List<Integer> list1 = new List<Integer>{34,67,45,89,96,34,27,97,3,83};

Integer largestValue = list1[0];

for(Integer each : list1) {
  //if(each>largestValue)
  //largestValue=each;

  largestValue=Math.max(largestValue, each);
}

System.debug('largestValue '+largestValue); 

System.debug('8task----------9---------');

/*9. inspired by above, now use same approach to find smallestValue in List of 10 Integers
   - create a variable called smallestValue and assign it to first item in the list
   - use for each loop to loop through each item
   - inside the loop re-assin smallestValue to 
     - the result of Math.min(smallestValue, each)
   - print out smallestValue outside the loop
   - and that's how we can get min values in List of Integers
   - try to change the values of List item and run again  */

List<Integer> list1 = new List<Integer>{34,67,45,89,96,34,27,97,3,83};

Integer smallestValue = list1[0];

for(Integer each : list1) {
  //if(each<smallestValue)
  //smallestValue=each;

  smallestValue=Math.min(smallestValue, each);
}

System.debug('smallestValue '+smallestValue); 

System.debug('8task----------10---------');
/*10. Write an Apex code that create a role List of 10 String 
   - join each item by space and store it into a String variable joined text 
     - and print it out
   - loop through the list 
     - print out each item along with character count in each item
     - in this format : 'admin has 5 characters'

   - loop through the list 
     - if it contains('dev') print out the items in UPPERCASE
     - if it contains('admin') print out the items removing the word admin : str.remove('admin') */
List<String> strList = new List<String>{
  'SF admin',
  'Architect',
  'Tester',
  'QA',
  'Analyst',
  'developer',
  'App Builder',
  'PO',
  'Scrum Master',
  'Consultant'
};

String joinedText = String.join(strList, ' ');
System.debug(joinedText); 

for(String each : strList) {
  System.debug(each +' has '+ each.length()+' characters');
}

for(String each : strList) {
  
  if(each.contains('dev'))
   System.debug(each.toUpperCase()); 

  if(each.contains('admin'))
  System.debug(each.remove('admin')); 
}