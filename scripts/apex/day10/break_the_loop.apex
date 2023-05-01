/**
you can exit any type of loop early
using the keyword break when needed

 */
//create a list of integer

//loop through each and item,when you find 10,stop looping

List<Integer> numList = new List<Integer>{ 7, 12, 15, 10, 17, 100, 4 };
for (Integer eachNum : numList) {
  System.debug(eachNum);
  if (eachNum == 10) {
    System.debug('YAY');
    // in order to break the loop sto stop looking
    // you can use thebreak statement
    break;
  }
}

/**
create List of integer with couple items 
iterate over each items and print the number 
skip when you see any number that more than 10 
 */
List<Integer> numLst = new List<Integer>{ 19, 1, 23, 4, 6, 99 };
for (Integer eachNum : numLst) {
  if (eachNum > 10) {
    continue;
  }
  System.debug(eachNum);
}
