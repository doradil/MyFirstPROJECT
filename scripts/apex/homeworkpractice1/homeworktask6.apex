/**  # Task Set 6 

1. Write an Apex code to create an empty List of Strings 
and add 3 names to it using add() method. then insert 3 more items at index number 1
 - print them out using both for loop or for each loop

2. Write an Apex code to create a List of Strings with 4 items
 set the value of last item to the value of first item 
  for example original list values :  item1 , item2, item3, item4 
                   list values now :  item1 , item2, item3, item1




3. Write an Apex code to create an List of Strings with 6 items 
    - if this list does not contains 'jon snow'
        - then insert 'jon snow' at index 4
    - if it does
        - remove 'jon snow' and insert it again at index 4

4. Write an Apex code to create List of 10 String with some duplicates values
List<String> heroList = new List<String>{'Superman', 'Batman', 'Spiderman', 'Iron Man', 'Wonder Woman', 'Captain America', 'Iron Man', 'Iron Man', 'Green Lantern', 'Batman'};

- Find the count of times 'Iron Man' showed up 

5. Continue from above List of 10 String with some duplicates values
- Print out all indexes of 'Iron Man' in the list 
- Create another List of Integer and Store the all indexes into new List when looping 
- print out the size of new List. 

6. Continue from above list 
- Write a while loop to check the list contains 'Iron Man' 
 - if so find index of each Iron Man and remove from the list

7. Create an Array of 10 Doubles 
 - use Array syntax to loop through each item 
 - get the count of the number is between 10 and 20 or 40-50 
 - get the sum of the numbers greater than 30

8. Create an String Array with 10 elements and print them in reverse order

9. Create an Boolean Array with 10 elements and count the the number of true value

10. Create a Array of 10 Integers 
  - print 'ideal numbers' if it contains both 10 and 5 
  - print 'Good numbers' if it contains 10 
  - print 'Ok numbers' if it contains 5
  - print 'Not so Good numbers' if it does not contain 10 and 5 (edited)

*/
/** 
 Write an Apex code to create an empty List of Strings 
and add 3 names to it using add() method. then insert 3 more items at index number 1
 - print them out using both for loop or for each loop

 */

List<String> nameList = new List<String>();

nameList.add('Dora');
nameList.add('Atakan');
nameList.add('Ali');
//for Integer count = 0;
for (Integer i = 0; i < nameList.size(); i++) {
  System.debug('nameList at index #' + i + ' is :' + nameList.get(i));
}
System.debug('nameList value is : ' + nameList);

nameList.add(1, 'Abdullah');
nameList.add(1, 'Yusuf');
nameList.add(1, 'Dilya');
System.debug('nameList value is : ' + nameList);

for (String each : nameList) {
  System.debug('Current value : ' + each);
}
System.debug('2---------------');
/**
  2. Write an Apex code to create a List of Strings with 4 items
 set the value of last item to the value of first item 
  for example original list values :  item1 , item2, item3, item4 
                   list values now :  item1 , item2, item3, item1
 */

List<String> nameList4 = new List<String>{ 'item1', 'item2', 'item3', 'item4' };
System.debug(nameList4.toString());

nameList4.remove(3);
nameList4.add(nameList4.get(0));

System.debug(nameList4.toString());

System.debug('3---------------');
/**
  3. Write an Apex code to create an List of Strings with 6 items 
    - if this list does not contains 'jon snow'
        - then insert 'jon snow' at index 4
    - if it does
        - remove 'jon snow' and insert it again at index 4
*/
List<String> nameList3 = new List<String>{
  'item1',
  'item2',
  'item3',
  'item4',
  'item5',
  'jon snow',
  'hbcbcbc',
  'vgcgg'
};
if (!nameList3.contains('jon snow')) {
  nameList3.add(4, 'jon snow');
  System.debug(nameList3.toString());
} else {
  Integer counter = 0;
  Integer index = null;
  for (String each : nameList3) {
    if (each.equals('jon snow')) {
      index = counter;
    }
    counter++;
  }
  nameList3.remove(index);
  System.debug(nameList3.toString());
  nameList3.add(4, 'jon snow');
  System.debug(nameList3.toString());
}

System.debug('4---------------');

/**4. Write an Apex code to create List of 10 String with some duplicates values
List<String> heroList = new List<String>{'Superman', 'Batman', 'Spiderman', 'Iron Man', 'Wonder Woman', 'Captain America', 'Iron Man', 'Iron Man', 'Green Lantern', 'Batman'};

- Find the count of times 'Iron Man' showed up 
*/
List<String> heroList = new List<String>{
  'Superman',
  'Batman',
  'Spiderman',
  'Iron Man',
  'Wonder Woman',
  'Captain America',
  'Iron Man',
  'Iron Man',
  'Green Lantern',
  'Batman'
};
Integer counter = 0;
//heroList.contains(3);

for (String each : heroList) {
  if (each.equals('Iron Man')) {
    counter++;
  }
}
System.debug(counter);
System.debug('5---------------');
/**
5. Continue from above List of 10 String with some duplicates values
- Print out all indexes of 'Iron Man' in the list 
- Create another List of Integer and Store the all indexes into new List when looping 
- print out the size of new List. 
 */

List<String> heroList2 = new List<String>{
  'Superman',
  'Batman',
  'Spiderman',
  'Iron Man',
  'Wonder Woman',
  'Captain America',
  'Iron Man',
  'Iron Man',
  'Green Lantern',
  'Batman'
};
Integer counter1 = 0;
List<Integer> heroList5 = new List<Integer>();

for (String each : heroList2) {
  if (each.equals('Iron Man')) {
    System.debug(counter1);
    heroList5.add(counter1);
  }
  counter1++;
}
System.debug(heroList5.size());

System.debug('6---------------');
/**
6. Continue from above list 
- Write a while loop to check the list contains 'Iron Man' 
 - if so find index of each Iron Man and remove from the list
  */

List<String> heroList6 = new List<String>{
  'Superman',
  'Batman',
  'Spiderman',
  'Iron Man',
  'Wonder Woman',
  'Captain America',
  'Iron Man',
  'Iron Man',
  'Green Lantern',
  'Batman'
};

while (heroList6.contains('Iron Man')) {
  heroList6.remove(heroList6.indexOf('Iron Man'));
}
System.debug('heroList6 value is : ' + heroList6);

System.debug('7---------------');
/**7. Create an Array of 10 Doubles 
 - use Array syntax to loop through each item 
 - get the count of the number is between 10 and 20 or 40-50 
 - get the sum of the numbers greater than 30
*/
Double[] num = new Double[10];
num[0] = 69.322d;
num[1] = 49.322d;
num[2] = 13.32d;
num[3] = 17.32d;
num[4] = 25.322d;
num[5] = 23.32d;
num[6] = 3.2d;
num[7] = 13.2d;
num[8] = 59.322d;
num[9] = 14.322d;
Integer countOf = 0;

for (Double each : num) {
  if ((each > 10 && each < 20) || (each > 40 && each < 50)) {
    countOf++;
  }
}
System.debug(
  'The count of the number is between 10 and 20 or 40-50 is: ' + countOf
);

Double sum = 0;
for (Double each : num) {
  if (each > 30) {
    sum += each;
  }
}
System.debug('The sumof the numbers greater then 30 is: ' + sum);

System.debug('8---------------');
/** 
Set6-8. Create an String Array with 10 elements and print them in reverse order
*/
String[]items = new String[10];
items[0]='item1';
items[1]='item2';
items[2]='item3';
items[3]='item4';
items[4]='item5';
items[5]='item6';
items[6]='item7';
items[7]='item8';
items[8]='item9';
items[9]='item10';
List<String> reversedItems = new List<String>();
for(Integer index=items.size()-1;index>=0; index--){
 reversedItems.add(items.get(index)) ;
}
System.debug('Reversed items : ' + reversedItems); 

System.debug('9---------------');
/**
9. Create an Boolean Array with 10 elements and count the the number of true value
 */
 Boolean[]BooleanArray=new Boolean[10];
 BooleanArray[0]=true;
 BooleanArray[1]=true;
 BooleanArray[2]=true;
 BooleanArray[3]=true;
 BooleanArray[4]=true;
 BooleanArray[5]=false;
 BooleanArray[6]=false;
 BooleanArray[7]=false;
 BooleanArray[8]=false;
 BooleanArray[9]=false;
 Integer count=0;
  for(Boolean each : BooleanArray){
    if(each==true){
      count++;
    }
  }
System.debug('Count of the number of true value is : ' + count ); 

System.debug('10---------------');
/**
Task6-10. Create a Array of 10 Integers 
  - print 'ideal numbers' if it contains both 10 and 5 
  - print 'Good numbers' if it contains 10 
  - print 'Ok numbers' if it contains 5
  - print 'Not so Good numbers' if it does not contain 10 and 5 (edited)
 */

 Integer[] numbers= new Integer[10];
 numbers[0]= 5;
 numbers[1]= 10;
 numbers[2]= 15;
 numbers[3]= 20;
 numbers[4]= 25;
 numbers[5]= 30;
 numbers[6]= 35;
 numbers[7]= 40;
 numbers[8]= 45;
 numbers[9]= 50;
 if( numbers.contains(5) && numbers.contains(10)){
  System.debug('ideal numbers' ); 
  
 }else if( numbers.contains(10) ){
  System.debug('Good numbers'); 
  
 }else if( numbers.contains(5) ){
  System.debug('Ok numbers'); 
  
 }else{
  System.debug('Not so Good numbers'); 
 
  
 }
