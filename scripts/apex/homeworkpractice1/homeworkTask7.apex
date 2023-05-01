/**  # Tasks Set 7 

1. Write an Apex code that create List or Array of 10 Integer values. 
   - remove duplicate and print it out 
   - print out the unique item count and difference between total list item count

2. Write an Apex code that create List or Array of unknown numbers(more than 3) of Integer values.
   - Store last 3 items into Integer Array
   - print out the Integer Array

3. Write an Apex code that create List or Array of 10 Integer values. 
   - create another List or Array and
   - store the items in reverse order
   - print it out 

4. Write an Apex code that create List or Array of 10 String values
   - create a empty Set of String 
   - store all the string that is not equal to admin or developer in it
   - print out the size and items in loop 

5. Write an Apex code that create List or Array of 5 Integer values. 
   - double the value of each item 
   - for example {1,4,6,4,6} => {2,8,12,8,12}

6. Write an Apex code that create List or Array of 5 String values
   - add the word sf+index at the end of each element
   - {'Anakin','Obivan','Yoda','Windu','Ahsoka'} => 
   - {'Yoda sf1' 'Anakin sf2','Obivan sf3','Windu sf4','Ahsoka sf5'}

7. Write an Apex code that create List or Array of 5 String values
   - Create a String variable called joinedText
   - Loop through all the items and append one item after another into joinedText variable separated by hyfen(-) and last item should not have -
   - Example : Your list {'This','is','The','Way','Student'}
     - value of joinedText 'This-is-The-Way-Student'

8. Write an Apex code that create List or Array of 7 String values
   - store the the index of item in the middle in to variable mid1
   - now imagine you unknown (odd) number of items in the list and find out a way to dynamically find the index of item in the middle 
     - if you have 7 items : number 4 item is in the middle
     - if you have 17 items : number 9 item is in the middle and so on
     - no loop needed here
   - print out the value of item in the middle


7. Write an Apex code that create List or Array of 8 String values
   - store the the index of 2 items in the middle into 2 variables mid1, mid2
   - now imagine you unknown (even) number of items in the list and find out a way to dynamically find the index of item in the middle 
     - if you have 8 items : number 4 and 6 items are in the middle
     - if you have 18 items : number 8 and 9 items are in the middle and so on
     - no loop needed here
   - print out the value of items in the middle

Refer Day 12 Code Extras at the end for this
8.  Write an Apex code that create 2 Set of Integer with 5 values
   -  check if all items in set 2 exists in set 1
   -  check if all items in set 1 exists in set 2
      -  HINT : containsAll method
   -  add all items in the set 1 into set 2
   -  check if all items in set 2 exists in set 1
   -  check if all items in set 1 exists in set 2
   -  remove all items exists in set 2 from set 1
      -  HINT : removeAll method

8.  Write an Apex code that create 2 Set of String with 5 values
   - update set1 to only retain the elements exists in both set1 and set2
      -  HINT : retainAll method

9. Write an Apex code that create Set of 10 Integer
   - create a variable called average 
   - calculate the average  sum/item count and print it out
   - Create empty List of Integer
   - store only items above average in above Set
   - removeAll items that below average from the Set 


10. Write an Apex code that create List of 10 Integer values as scoreList
    - get the count of numbers less than 0 or greater than 100
    - in separate loop, update the value of items as below
      - if the Integer less than 0 update it to 0 
      - if the Integer more than 100 update it to 100
    - HINT : Array syntax is much simpler when it comes to update
 */

System.debug('-------Set7-1-------');
/**
 1. Write an Apex code that create List or Array of 10 Integer values. 
   - remove duplicate and print it out 
   - print out the unique item count and difference between total list item count
  */
Integer[] numbers = new List<Integer>{ 29, 25, 26, 66, 79, 31, 25, 99, 29, 35 };
System.debug('numbers value is : ' + numbers);

//- remove duplicate and print it out
set<Integer> numbersSetList = new Set<Integer>(numbers);
System.debug('myVar value is : ' + numbersSetList);

// - print out the unique item count and difference between total list item count
System.debug('Arriy size is : ' + numbers.size());
System.debug('Numbers Set List size is : ' + numbersSetList.size());
System.debug(
  'Difference in count beetween Arriy and set is:' +
  (numbers.size() - numbersSetList.size())
);
System.debug('-------Set7-2-------');
/**2. Write an Apex code that create List or Array of unknown numbers(more than 3) of Integer values.
   - Store last 3 items into Integer Array
   - print out the Integer Array
*/

Integer[] unknownNumbers = new Integer[6];
unknownNumbers[0] = 6;
unknownNumbers[1] = 15;
unknownNumbers[2] = 136;
unknownNumbers[3] = 42;
unknownNumbers[4] = 60;
unknownNumbers[5] = 0;

Integer[] newArriy = new Integer[3];
newArriy[0] = unknownNumbers[unknownNumbers.size() - 3];
newArriy[1] = unknownNumbers[unknownNumbers.size() - 2];
newArriy[2] = unknownNumbers[unknownNumbers.size() - 1];
System.debug(newArriy);

System.debug('-------Set7-3-------');
/**
3. Write an Apex code that create List or Array of 10 Integer values. 
   - create another List or Array and
   - store the items in reverse order
   - print it out 
    */
Integer[] prices = new List<Integer>{ 10, 16, 22, 32, 45, 56, 65, 78, 65, 88 };
List<Integer> reversePrices = new List<Integer>();
for (Integer i = prices.size() - 1; i >= 0; i--) {
  reversePrices.add(prices[i]);
}
System.debug('Prices in reverse order are: ' + reversePrices);

System.debug('-------Set7-4-------');
/**
    4. Write an Apex code that create List or Array of 10 String values
   - create a empty Set of String 
   - store all the string that is not equal to admin or developer in it
   - print out the size and items in loop 
 */
String[] strList = new List<String>{
  'item1',
  'admin',
  'item3',
  'item4',
  'item5',
  'developer',
  'item7',
  'item8',
  'item9',
  'item10'
};
Set<String> itemSet = new Set<String>();
for (String each : strList) {
  if (each == 'admin' || each == 'developer') {
    continue;
  }
  itemSet.add(each);
  System.debug('The size of set is: ' + itemSet.size());
  System.debug('Items in the set are : ' + itemSet);
}

System.debug('-------Set7-5-------');
/**
    5. Write an Apex code that create List or Array of 5 Integer values. 
   - double the value of each item 
   - for example {1,4,6,4,6} => {2,8,12,8,12}
    */
List<Integer> numberList = new List<Integer>{ 56, 89, 82, 36, 83 };
for (Integer i = 0; i < numberList.size(); i++) {
  numberList.set(i, numberList.get(i) * 2);
}
System.debug('Doubled value are: ' + numberList);

System.debug('-------Set7-6-------');
/**
6. Write an Apex code that create List or Array of 5 String values
   - add the word sf+index at the end of each element
   - {'Anakin','Obivan','Yoda','Windu','Ahsoka'} => 
   - {'Yoda sf1' 'Anakin sf2','Obivan sf3','Windu sf4','Ahsoka sf5'}
    */
List<String> strList1 = new List<String>{
  'Anakin',
  'Obivan',
  'Yoda',
  'Windu',
  'Ahsoka'
};
for (Integer i = 0; i < 5; i++) {
  strList.set(i, strList1.get(i) + ' sf' + i);
}
System.debug('strList1 value is : ' + strList1);

System.debug('-------Set7-7-------');

/**
 7. Write an Apex code that create List or Array of 5 String values
   - Create a String variable called joinedText
   - Loop through all the items and append one item after another into joinedText variable separated by hyfen(-) and last item should not have -
   - Example : Your list {'This','is','The','Way','Student'}
     - value of joinedText 'This-is-The-Way-Student'
  */
  /** 
  List<String> strList = new List<String>{'This','is','The','Way','Student'};
String joinedText = String.join(strList,'-');
System.debug('joinedText value is : ' + joinedText); 
  
  
   */

List<String> strList7 = new List<String>{
  'This',
  'is',
  'The',
  'Way',
  'Student'
};
String word1 = strList7.get(0);
String word2 = strList7.get(1);
String word3 = strList7.get(2);
String word4 = strList7.get(3);
String word5 = strList7.get(4);
System.debug(word1 + '-' + word2 + '-' + word3 + '-' + word4 + '-' + word5);

System.debug('-------Set7-8-------');
/**
8.  Write an Apex code that create 2 Set of Integer with 5 values
   -  check if all items in set 2 exists in set 1
   -  check if all items in set 1 exists in set 2
      -  HINT : containsAll method
   -  add all items in the set 1 into set 2
   -  check if all items in set 2 exists in set 1
   -  check if all items in set 1 exists in set 2
   -  remove all items exists in set 2 from set 1
      -  HINT : removeAll method
    
 */
Set<Integer> numberSet1 = new Set<Integer>{ 52, 22, 28, 75, 18 };
Set<Integer> numberSet2 = new Set<Integer>{ 22, 72, 38, 85, 48 };

System.debug(
  'numberSet1 contains all the values in numberSet2 : ' +
  numberSet1.containsAll(numberSet2)
);

numberSet2.addAll(numberSet1);
System.debug('nemberSet1 value is : ' + numberSet1);
System.debug('nemberSet2 value is : ' + numberSet2);

System.debug(
  'All items in set 2 exists in set 1 : ' + numberSet1.containsAll(numberSet2)
);
System.debug(
  'All items in set 1 exists in set 2 : ' + numberSet1.containsAll(numberSet1)
);

numberSet2.removeAll(numberSet1);
System.debug('nemberSet2 value is : ' + numberSet2);

System.debug('-------Set7-8-------');
/**2. Write an Apex code that create List or Array of unknown numbers(more than 3) of Integer values.
   - Store last 3 items into Integer Array
   - print out the Integer Array
*/

List<Integer> numberList = new List<Integer>{
  90,
  79,
  29,
  25,
  32,
  11,
  22,
  33,
  32,
  54
};
System.debug('numberList value is : ' + numberList);
/**
in order to get the item at certain location , we need index 
in order to get last 3 item , we need index of those 3 
    last item            :  numberList.size() - 1     ==> 9 
    second from the last :  numberList.size() - 2     ==> 8 
    third from the last  :  numberList.size() - 3     ==> 7 

creating an integer array with size 3 
add value one by one 
 */
Integer[] last3Items = new Integer[3];
last3Items[0] = numberList.get(numberList.size() - 3);
last3Items[1] = numberList.get(numberList.size() - 2);
last3Items[2] = numberList.get(numberList.size() - 1);

System.debug('last3Items value is : ' + last3Items);
