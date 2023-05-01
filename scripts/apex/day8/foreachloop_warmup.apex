// Create a List of Decimal and add 5 values in it 

// optionally , create a variable outside of your loop called sum 
// then use your for each loop to get the sum of all decimal numbers

List<Decimal> prices = new List<Decimal>{9.99,  2.59, 3.14 , 9.9 , 10.5};
 Decimal sum = 0 ; 

 for(Decimal eachPrice  : prices){
    //sum = sum + eachPrice ; 

    sum += eachPrice ; 
 }

 System.debug('Sum is ' + sum); 


/**
Create a list of Integer with 8 items 
Iterate over the list (use loop to go through each and every item)
print out only if the number is greater than 5
 */
 List<Integer> shoeSizeList = new List<Integer>{4,7,9,2,7,8,12,1} ;
 System.debug('Item size is ' +   shoeSizeList.size() );

  for(Integer eachSize : shoeSizeList){
   if(eachSize> 5){

   
   System.debug(eachSize);
   }
 }
// output  7 9 7 8 12
 // get the sum of shoe sizes only if the number is greater than 5
 /**Integer sum1 = 0;

 for(Integer eacSize : shoeSizeList){
    //only add the size to sum if it is greater then 5
    if(eacSize>5){
     sum1+=eacSize;
    }
 }
 System.debug('Sum1 of size greater than 5 : ' + sum1 );
 */

 //get the count of shoe sizes only if the number is greater then 5

 Integer count = 0 ;
  //integer over teach shoe sizes
 for(Integer each : shoeSizeList){
     //chek if the number is greater then 5
     if(each > 5){
        // if it is , increment the count by 1 else do nothing 
        count++;
     }

 }
 // by the time the loop finish ,
 // we will end up with count of sizes greater than 5
  System.debug('count of shoe sizes greater then 5 : ' + count);
