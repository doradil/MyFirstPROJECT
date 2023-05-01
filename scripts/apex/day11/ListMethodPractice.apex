List<Integer> numberList = new List<Integer>{19,47,57,22,42,10,66,70,80,89,31};
System.debug('numberList value is : ' + numberList); 

numberList.add(100);

//add(index, value)
numberList.add(0, 999);
System.debug('numberList value is : ' + numberList); 

// add value 888 into index location
numberList.add(2, 888);
System.debug('numberList value is : ' + numberList); 

//set(index, newValueYouWantToUpdate)
/**
index : where do you want to update the value (which index location)
newValueYouWantToUpdate : what's the value
 */
 numberList.set(0, 777);
 System.debug('numberList value is : ' + numberList); 

// remove(index) : remove the value at that index

// remove the item at index number 2
numberList.remove(2);
 System.debug('numberList value is : ' + numberList);

//isEmpty() // return false if the size > 0 true if 0
Boolean lstHasNumbers =  numberList.isEmpty() ; 
System.debug('lstHasNumbers value is : ' + lstHasNumbers); 

//contains(value to check)
//it return  true if the value exist,returnfalse if not


System.debug('numberList.contains(31) value is : ' 
                                + numberList.contains(31)); 

//print out FOUND IT if you see 66 in the list
//store the result into a bolean variable
//and print it out at the end


Boolean has66 = false ; 
for(Integer each : numberList) {
    //System.debug('Value at index #'+ i +' is :' + yourCollectionName.get(i) );
if(each==66){
    System.debug('FOUND IT'); 
    has66=true;
    break;
 }
}
System.debug('has66 value is : ' + has66); 

Integer indexOf22= numberList.indexOf(47);
System.debug('indexOf22 value is : ' + indexOf22); 
//remove22 from the list
numberList.remove(indexOf22);
System.debug('number value is : ' + numberList); 