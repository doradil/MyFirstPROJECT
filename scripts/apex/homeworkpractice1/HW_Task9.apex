/**1. Create a variable contains your full name
   - print it out in uppercase
   - print it out in lowercase
   - find the index of space and print
   - print first char of first and last name together :initials

2. Create a List of 10 String
   - get the count of String with more than 5 characters
   - print them out

3. Create a List of 10 String
   - get the count of String even character count
   - print them out

anagrams words contain the same letters in a different order
for example : late , tale , teal
4. Write a program that 
   - create two string variables with values
   - print 'Its anagram!!!' if they contains same letter in different order AKA anagram
   - print 'Its not anagram!!'
   - HINT : use containsOnly method twice on each other

5. Create a string variable containing an email address, 
   - for example jonsnow@nightwatch.com
   - store the index of the '@' character in the email address.
   - print out the part before '@' in uppercase
   - print out whatever is after '@' 
   - print out last 3 characters

6. Create a String variable with value 
   - print out the length of the String 
   - print out the last character index
   - print out index of second character from the last
   - split the string by empty String to get List of all characters
   - loop through each item and get the count of 'a'
   - now read the doc and try out countMatch method

7. Create a String with a long sentence
   - print out the word count in sentence
   - loop through each item and reverse it 
   - outside your loop , print to see the result

8. Create a String with a long sentence
   - split the sentence to get word list 
   - create a variable called longestCharCount
   - assign it's value to first item length
   - loop through each item 
      - use Math.max(longestCharCount, each.length() )
   - outside your loop , print to see the result of longestCharCount

9. Create a String variable with the value 
   - check if the value is palindrome or not 
   - palindrome read the same from forward or backward 
   - for example anna , hanna , racecar, mom
   - do case-sensitive check!

10. Create a List of 5 String values 
   - create a Boolean variable called isAllPalindrome and set to true
   - loop through each item in the list 
      - check if the word is palindrome or not 
      - if it's not set isAllPalindrome to false
      - else take no action (so no else)
      */

System.debug('-----------------task9-1--------------------');
/**
    1. Create a variable contains your full name
   - print it out in uppercase
   - print it out in lowercase
   - find the index of space and print
   - print first char of first and last name together :initials
 */
String fullName = 'Dora Ata';
System.debug('Ful name UpperCase  is : ' + fullName.toUpperCase());
System.debug('Ful name LowerCase  is : ' + fullName.toLowerCase());
System.debug('index of spase ' + fullName.indexOf(' '));
System.debug('fullName.left (1)' + fullName.mid(0, 1));
System.debug('fullName.right(1)' + fullName.mid(4, 2));

System.debug('-----------------task9-2--------------------');
/**
   2. Create a List of 10 String
   - get the count of String with more than 5 characters
   - print them out
    */

List<String> ListOfString = new List<String>();
ListOfString.add('Love');
ListOfString.add('Sevgi');
ListOfString.add('Ask');
ListOfString.add('Lubov');
ListOfString.add('Life');
ListOfString.add('Yasam');
ListOfString.add('Hayot');
ListOfString.add('Jizn');
ListOfString.add('Family');
ListOfString.add('Kidssss');
Integer count0 = 0;
for (String each : ListOfString) {
  if (each.length() > 5) {
    System.debug(each);
    count0++;
  }
}
System.debug('count0 value is : ' + count0);
System.debug('----------------task9-3--------------------');
/**
3. Create a List of 10 String
   - get the count of String even character count
   - print them out
    */
List<String> name = new List<String>{
  'Lola',
  'Ali',
  'Yusuf',
  'Mina',
  'Klara',
  'Dora',
  'Ata',
  'Abdu',
  'Jon',
  'Kemal'
};
Integer count = 0;
for (String each : name) {
  if (Math.mod(each.length(), 2) == 0) {
    count++;
  }
}
System.debug(count + ' item with even character count');

System.debug('----------------task9-4--------------------');
/**anagrams words contain the same letters in a different order
for example : late , tale , teal
4. Write a program that 
   - create two string variables with values
   - print 'Its anagram!!!' if they contains same letter in different order AKA anagram
   - print 'Its not anagram!!'
   - HINT : use containsOnly method twice on each other
*/
String str1 = 'ask';
String str2 = 'ksa';
if (str1.containsOnly(str2) && str2.containsOnly(str1)) {
  System.debug('Its anagram!!!');
} else {
  System.debug('Its not anagram!!');
}
System.debug('----------------task9-5--------------------');
/**
5. Create a string variable containing an email address, 
   - for example jonsnow@nightwatch.com
   - store the index of the '@' character in the email address.
   - print out the part before '@' in uppercase
   - print out whatever is after '@' 
   - print out last 3 characters

 */

 String email='jonsnow@nightwatch.com';
 Integer index = email.indexOf('@');

System.debug('index value is : ' + index); 
System.debug(email.left(index).toUpperCase()); 
System.debug(email.mid(index+1, 14)); 
System.debug('last 3 characters  : ' + email.right(3)); 


System.debug('----------------task9-6--------------------');
/** 
6. Create a String variable with value 
   - print out the length of the String 
   - print out the last character index
   - print out index of second character from the last
   - split the string by empty String to get List of all characters
   - loop through each item and get the count of 'a'
   - now read the doc and try out countMatch method
 */
 String company='Doracouture';
 Integer length=company.length();
 System.debug('the length  ' + length); 
 System.debug('Last character index ' +company.indexOf(company.right(1),length-1)) ;
 System.debug('Last character index ' +company.indexOf((company.mid(length-2,1)),length-2)) ;
 System.debug('split  ' + company.split('')); 
 List<String> caliList=company.split('');
 
 Integer count1=0;
 for(String each:caliList){
    if(each.contains('a')){
        count1++;

    }
 }
 System.debug('count of \'a\' ' + count ); 
  Integer zone = company.countMatches('a');
  System.debug('\'a\' occurs' +zone+  'zone in Doracouture' ); 