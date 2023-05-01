/**
Create a variable called starCount
intialize it to 0
use loop, to print out below
0 star ranger
1 star ranger
2 star ranger
3 star ranger
4 star ranger
5 star ranger
6 star ranger
 */
  //Integer starCount = 0 ;
//  while(starCount<6){
//     System.debug(starCount +'Star ranger');
//     starCount++ ;
//  } 

// do { 
//  System.debug(starCount +'Star ranger');
//    starCount++ ;


// }while(starCount <=6);

Integer starCount = 0 ;
while (starCount <= 6 ){

        if(starCount == 0 ){
System.debug( starCount + ' Almost There to 1 Star ');
        }else if(starCount == 6 ) {  
     System.debug ( starCount + ' All Star Ranger ');        
        }else {   
    System.debug ( starCount + ' Star Ranger ');        
        }
    starCount++;
} 