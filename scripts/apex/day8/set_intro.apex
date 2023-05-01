/**
set is a type of collection that store unique element
unlike List, it does not keep insertion order, it does not have the idea of position

set<DataType> yourVarName = ne set<DataType>();

Set< DataType > yourVarName = new  Set<DataType>{item1,item2,..itemN} ; 
*/
//declaring and initializing an empty set

set<Integer> targets = new Set<Integer>();

targets.add(100);
targets.add(100);
targets.add(100);
targets.add(200);
targets.add(200);
targets.add(200);

System.debug(targets);
System.debug('count of items is : ' + targets.size());


//create a set of string to store 10 item with,single letter for each item

Set<String>letters = new Set<String>{'A','A','A','B','B','B','C','C','C','D'};


// Print out the entire Set 
System.debug(letters);
// print out the size 
System.debug('unique letter count : ' + letters.size());
// use for each loop to print out each items 

for(String eachLetter:letters){
    System.debug(eachLetter);
 
}