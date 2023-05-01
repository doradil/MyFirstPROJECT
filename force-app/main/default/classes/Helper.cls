public class Helper {
    

    // create static void method that print 1 to N
    public static void printOneToN(Integer n){

        for(Integer i= 1; i<= n ;i++) {
            System.debug('i value is : ' + i);
            
        }

    }

    // create static method 
    // that get the sum of the numbers from 1 to N
    public static Integer sumOfOneToN(Integer n){

        Integer sum = 0 ; 

        for(Integer i= 1; i<= n ;i++) {
            sum += i ;     
        }

        return sum ; 
    }


    // create a method called getOneToNList
    // It should return List of Integer with 1 to N as per item
    public static List<Integer> getOneToNList(Integer n){

        List<Integer> numLst = new  List<Integer>(); 

        for(Integer i= 1; i<= n ;i++) {
            numLst.add(i); 
        }

        return numLst ; 

    }
    /**
     * Write a method called getHighestNumber 
     * @param List<Integer>
     * @return Higest number 
     */
    public static Integer getHighestNumber(List<Integer> lst ){

        Integer max = lst[0] ;
 
         for(Integer each : lst) {
             
             if(  each > max   ){
                 max = each ; 
             }
         
         }
         return max ;  
 
     }
             /**
     * a method called getLongerNames 
     * that accept many names and get the longer names from the list 
     * if the character count is greater than 5 and return all of them
     * 
     * @param names List<String> 
     * @return List<String> that meets the criteria
     * 
     */
    public static List<String> getLongerNames(List<String> strList){

        List<String> filteredList = new List<String>(); 

        for(String each : strList) {

            if( each.length() > 5 ){
                filteredList.add(each) ; 
            }

        }
        return filteredList ; 

    }
    
}
//public class StringArrayTest {
    //public static List<String> generateStringArray(Integer n){
        //['Test 0', 'Test 1', 'Test 2'........]
       // List<String>strList=new List<String>();
        //for(Integer i=0; i<n; i++){
          //  strList.add('Test ' + i);
       // }
       // return strList;
   // }
//}
