/**

Declare 3 Integer variavles and initialize their values. 
Write a code to print out the largest number by
 comparing them with each other

 Logic :

 If num1  greater then num2 and num3 ==> num1 larger
 If num2  greater then num1 and num3 ==> num2 larger
 If num3  greater then num1 and num2 ==> num3 larger

*/
Integer num1 = 10, num2 = 20, num3 = 30;

if (num1 > num2 && num1 > num3) {
  System.debug(num1 + ' is the largest');
} else if (num2 > num1 && num2 > num3) {
  System.debug(num2 + ' is the largest');
} else {
  System.debug(num3 + ' is the largest');
}

System.debug('--------------');

/**
7. Write an Apex code that create List or Array of 5 String values
   - Create a String variable called joinedText
   - Loop through all the items and append one item after another into joinedText variable separated by hyphen(-) and last item should not have -
   - Example : Your list `{'This','is','The','Way','Student'}`
     - value of joinedText `'This-is-The-Way-Student'`
*/

List<String> strList = new List<String>{
  'This',
  'is',
  'The',
  'Way',
  'Student'
};
String joinedText = '';
// for (String each : strList) {
//   //System.debug('Current value : ' + each);
//   joinedText += each + '-';
// }
// System.debug('joinedText value is : ' + joinedText);

/**
The requirement asked to not include - after last item
loop through each item and append each item into joinedText
when you reach last item, do not append - at the end
 */
 for(Integer i=0; i<strList.size() ; i++) {
    //System.debug('Value at index #'+ i +' is :' + strList.get(i) );
// Store the current item value into a variable so we can reuse
String each = strList.get(i);
    // when we are at the last item in the loop
    // do not add - at the end  joinedText += each
    if(i==strList.size()-1){
        joinedText+= each;
    }else{

    // when we are not at the last item in the loop
    // add append each current item value and - at the end  joinedText += each + '-'
    joinedText+=each+'-';
    }

 }
 System.debug('joinedText value is : ' + joinedText); 