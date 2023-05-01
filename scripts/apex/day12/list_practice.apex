/**
We can create a Set by copying the content of another set of list
 */

 List<Integer> numberList1 = new List<Integer>{071,91,81,86,54};
 System.debug('numberList1 value is : ' + numberList1); 
 
List<Integer> numberList2 = new List<Integer>(numberList1);
System.debug('numberList2 value is : ' + numberList2); 

Set<Integer> numberSet = new Set<Integer>{96,76,50,76,94};
System.debug('numberSet value is : ' + numberSet ); 

List<Integer> numberList3 = new List<Integer>(numberSet);
System.debug('numberList3 value is : ' + numberList3); 
// if you already have a list created
// and if you want to add all the elements from another list
// for example numberList1 has 5 items, numberList3 has 5 items
// add everything in numberList1 into numberList3 so it can have 10 items

numberList3.addAll(numberList1);
System.debug('numberList3 value is : ' + numberList3); 

//addall method either accept another list or set,to add all the element 
//into this list that calling addAll method

numberList1.addAll(numberSet);
System.debug('numberList1 value is : ' + numberList1); 