/**3. Write an Apex code that create List or Array of 10 Integer values. 
   - create another List or Array and
   - store the items in reverse order
   - print it out */

List<Integer> list11 = new List<Integer>{ 5, 87, 45, 67, 93, 65, 90, 9, 26 };
List<Integer> reverse = new List<Integer>();

for (Integer i = list11.size() - 1; i >= 0; i--) {
  reverse.add(list11[i]);
}
//reverse {}
System.debug('list11 values ' +list11);
System.debug('reverse values ' +reverse);
List<Integer> listnew = new List<Integer>();
for(Integer i=0; i<reverse.size() ;i++) {
    listnew.add(reverse[i]);
    
}
System.debug('listnew value is : ' + listnew); 
System.debug('-------1------'); 


//question 1:
String myString1 = 'The quick brown fox jumps over the lazy dog';
String[] myWords = myString1.split(' ');
System.debug(myWords[3].toUpperCase());

System.debug('------2-------'); 

//Question 2:
String myString = 'The quick brown fox jumps over the lazy dog';
Boolean containsFox = myString.contains('fox');
System.debug(containsFox);

System.debug('------3-------'); 

//Question 3:
String str1 = 'The quick brown fox jumps over the lazy dog';
str1 = str1.replaceAll('the', 'a');
System.debug(str1.substring(10, 15));

System.debug('------4-------'); 

//Question 4:
List<Integer> numList = new List<Integer>{1, 2, 3, 4, 5};
numList.remove(1);
numList.add(1);
System.debug(numList);
System.debug('------5-------'); 
//Question 5:
String str2 = 'hello world';
String newStr = str2.replace('o', 'e').toUpperCase();
System.debug(newStr);
System.debug('-----6--------'); 
//Question 6:
String s = 'Welcome to Cydeo!';

System.debug('-----7--------'); 

//Question 7:
String str = 'The quick brown fox jumps over the lazy dog';
str = str.substring(4, 19).toUpperCase().replace('QUICK', 'slow');
System.debug(str);
System.debug('------8-------'); 
//Question 8:
List<String> fruits = new List<String>{'apple', 'banana', 'cherry', 'date'};
String lastFruit = fruits[fruits.size() - 1];
String reversedLastFruit = lastFruit.reverse();

System.debug(reversedLastFruit);

System.debug('-------9------'); 
//Question 9:
List<String> words = new List<String>{'Hello', 'world', 'how', 'are', 'you'};

String joinedWords = String.join(words, ' ');
String[] splitWords = joinedWords.split('o');
System.debug(splitWords.size());

System.debug('-----10--------'); 
//Question 10:
Account a = new Account();
a.Name = 'Acme Corp';
a.Industry = 'Technology';
a.Phone = '555-1234';
insert a;

System.debug('New account ID: ' + a.Id);