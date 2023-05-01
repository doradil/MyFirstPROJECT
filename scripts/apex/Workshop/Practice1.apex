/*
1. Create a list of Decimal named 'cheapList' and add these 5 elements into the list. (2.75, 5.99, 8.25, 9.50, 9.99)
2. Create another list of Decimal named 'priceyList' and add these 6 elements into the list. (15.75, 5.99, 19.25, 25.50, 9.99, 7.50)
3. If any element in the 'priceyList' is less than 10, add that element into 'cheapList'.
4. Also, remove those elements (with the value of less than 10) from the 'priceyList'.
5. Finally, print out the elements in both lists and the size of the lists.
*/
List <Decimal> cheapList = new List <Decimal> {2.75, 5.99, 8.25, 9.50, 9.99};

List <Decimal> priceyList = new List <Decimal> {15.75, 5.99, 19.25, 25.50, 9.99, 7.50};

List <Decimal> priceyList2 = new List <Decimal> ();

for (Decimal eachPrice : priceyList ){
    if (eachPrice < 10){
        cheapList.add(eachPrice);
    }else {
        priceyList2.add(eachPrice);
    }
}

System.debug('The elements in the cheaplist: ' + cheapList);
System.debug('The elements in the priceyList2: ' + priceyList2);

System.debug('The size of the cheapList: ' + cheapList.size());
System.debug('The size of the priceyList2: ' + priceyList2.size());
System.debug('____________');

/**1. Create a list of Integer named "orderNumbers".
  2. Add numbers between 1-20 into the list. 
  3. Check if the size of the list is 20 and print out the result as "true" or "false"
  4. Print out each number in the list as 'Order Number X' except 5, 10 and 15.
  */

List <Integer> orderNumbers = new List <Integer>();

for(Integer i = 1 ; i <=20 ; i++){
    orderNumbers.add(i);
}

System.debug('The numbers in the list: ' + orderNumbers);
Integer listSize = orderNumbers.size();
System.debug('The size of the list: ' + listSize);
System.debug('Is list size equals 20: ' + (listSize == 20));

//1st Solution
for (Integer eachNum :orderNumbers ){
    if (eachNum != 5 && eachNum != 10 && eachNum != 15 ){
        System.debug('Order Number ' + eachNum);
    }
}
System.debug('****************************');
//2st Solution
for (Integer eachNum :orderNumbers ){
    if (eachNum == 5 || eachNum == 10 || eachNum == 15 ){
        continue;   
    }
    System.debug('Order Number ' + eachNum);
}

System.debug('****************************');

List<Integer> doNotPrint = new List<Integer>{5,10,15};
for (Integer eachNum : orderNumbers){
    if (doNotPrint.contains(eachNum)){
        continue;
    }
    System.debug('Order Number ' + eachNum);
}
System.debug('****************************');


/** 
1. Create a list of Strings that represent the names of accounts. Add some duplicate values.
2. Add an account name 'Starbucks' to the first index of the list. Print out the list and its size.
3. Replace the first account name in the list with value 'Panera Bread'. Print out the new list and its size.
4. Add the number 50 to the list as an Integer datatype??? Print out the new list??? 
5. Print out only the first element/item in the list. 
6. Find out how many unique names showed up in the list by creating a Set.
    a. Create an empty Set of String 
    b. Iterate over names List using for each loop
    c. use add method of Set to add each items into Set
    d. outside the loop print out the set and the size of the set
7. Try to add a duplicate value to the set. Check the size of the set after adding a duplicate value.
8. Create a Boolean variable 'containsSony', check if there is an account name 'Sony' in the Set, and assign the returning value to the Boolean variable 'containsSony'.
9. If there is an account name 'Sony' in the Set, remove it from the Set. 
10. Clear all the elements of the Set and check if the set is empty.
*/
List<String> accountNames =new List<String>{'Ford','DreamHouse','CloudKicks','Tesla','Hotwheels','Food',
'Sony','Disney','Tesla','Disney','Sony','CloudKicks'};

System.debug('****************************');
//2. Add an account name 'Starbucks' to the first index of the list. Print out the list and its size.


accountNames.add(0,'Starbucks');
System.debug(accountNames);
System.debug(accountNames.size());
System.debug('****************************');

//3. Replace the first account name in the list with value 'Panera Bread'.
 //Print out the new list and its size.
 accountNames.set(0,'Panera Bread');
 System.debug(accountNames);
System.debug(accountNames.size());
System.debug('****************************');

//4. Add the number 50 to the list as an Integer datatype??? Print out the new list??? 

//accountNames.add(50);

//5. Print out only the first element/item in the list. 
 System.debug('The first element in the list is: ' + accountNames.get(0));
 System.debug('****************************');

 //6. Find out how many unique names showed up in the list by creating a Set.
    // a. Create an empty Set of String 
    // b. Iterate over names List using for each loop
    // c. use add method of Set to add each items into Set
    // d. outside the loop print out the set and the size of the set

Set<String>accountNamesSet = new Set<String>();
for(String eachName : accountNames){
accountNamesSet.add(eachName);
}
System.debug(accountNamesSet);
accountNamesSet.add('Disney');
System.debug(accountNamesSet.size());

accountNamesSet.add('Sony');
System.debug(accountNamesSet.size());

accountNamesSet.clear();
System.debug('Is the accountNamesSet empty: ' + accountNamesSet.isEmpty());


System.debug('****************************');