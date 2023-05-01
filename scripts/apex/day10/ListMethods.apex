/**

List is a collection type that store elements in insertation order
each and evry elements are store in a posetion that start with 0
foe example if you have below list
//                           item 1 2 3 4 5 6 
List<Integer> numLst = new List<Integer>{19,1,23,4,6,99};
//                             index 0 1 2 3 4 5
 */

List<Integer> numLst = new List<Integer>{ 19, 1, 23, 4, 6, 99 };
//get the element at certain index uzing get method
//get the first element and store in in a variable


 Integer item1 = numLst.get(0) ; 
 System.debug('first item value ' + item1) ;   

 // directly print out the second item value using get method 
  System.debug('second item value ' +  numLst.get(1)      ); 

  System.debug(  numLst.get(2)  ); 
  System.debug(  numLst.get(3)  ); 
  System.debug(  numLst.get(4)  ); 
  System.debug(  numLst.get(5)  ); 
  System.debug(numLst);

  System.debug('_____________');
  //iterate over all the elements in the loop wothout for each loop

  for(Integer index=0 ;index<6;index++){
    System.debug(numLst.get(index));
     
  }
  System.debug(  numLst.get(0)  ); 
  System.debug(  numLst.get(1  ); 
  System.debug(  numLst.get(2)  ); 
  System.debug(  numLst.get(3)  ); 
  System.debug(  numLst.get(4)  ); 
  System.debug(  numLst.get(5)  ); 
 
