/**

1. Create a String variable with a sentence that contains spaces in the beginning and at the end and middle. 
for example : '  DML   iS reaLly CoOl   '
   - Remove the space in the beginning and at the end then print 
         should be => 'DML   iS reaLly CoOl'
   - normalize the space then print 
         should be => 'DML iS reaLly CoOl'
   - check the normalized version of String startsWith 'DML' and print out true | false  (check out the existing method in String class)
   - check the normalized version of String endsWith 'cool'(case insensitive) and print out true | false  (check out the existing method in String class)

2. Create a String variable called message that contains a sentence with mixed case. 
for example : 'APEX mAde iT Easy to wOrk With SAlesforce DAtabase'
   - split to get List of String 
   - use for loop to go though each items
      - make each item TitleCase (lookup capitalize method from String class)
      - make sure to assign it back to yourList[i] so it actually update
   - outside your loop , print out to see latest change
   - join the list items with space 
      => re-assign back to the String variable message
      => expect 'Apex Made It Easy To Work With Salesforce Database'

3. Create an empty List of Lead 
   - use for loop to go through 10 iteration 
   - add lead with FirstName, LastName, Company fields set
   -  'Test Lead FN 1' ,'Test Lead LN 1' , 'Company 1'
   -  'Test Lead FN 2' ,'Test Lead LN 2' , 'Company 2'
   ....
   -  'Test Lead FN 10' ,'Test Lead LN 10' , 'Company 10'
   insert the list into your org

4. Create a Lead with required Fields 
   - insert it into your org 
   - Create a Task variable and assign the value 
   - fill up with below fields
      - WhoId with the Id of the lead created above 
      - Priority 'High'
      - ActivityDate  Date 7 days from now 

5. Create List of Opportunity 
   - Add 10 items in it with valid Opportunity required fields filled up 
      - Name,  Opp - 1(2,3,4,5..10)
      - ClosedDate (10 days from Today), 
      - StageName ='Prospecting', 
      - Amount  random Integer between 0-100000
   - insert the list into your org 

   - Create an Account with Name = 'Parent of Cool Opp'
   - insert into Salesforce org 

   - Create an empty List of Opportunity called coolOppsList
      - Loop through your entire List of 10 items 
      - If amount is greater than 60000
         - Update AccountId field to Id of Account you created earlier
         - Add the Opportunity to coolOppsList

   - Update the coolOppsList in your org 
   - Go to user interface and observe you have filled up Account Name field of all opportunities amount over 60000 to 'Parent of Cool Opp' */
System.debug('----------1-------------');
/**1. Create a String variable with a sentence that contains spaces in the beginning and at the end and middle. 
for example : '  DML   iS reaLly CoOl   '
   - Remove the space in the beginning and at the end then print 
         should be => 'DML   iS reaLly CoOl'
   - normalize the space then print 
         should be => 'DML iS reaLly CoOl'
   - check the normalized version of String startsWith 'DML' and print out true | false  (check out the existing method in String class)
   - check the normalized version of String endsWith 'cool'(case insensitive) and print out true | false  (check out the existing method in String class) 
   */
String mySt = '  DML   iS reaLly CoOl   ';
System.debug('mySt value is : ' + mySt.trim().normalizeSpace());
mySt = mySt.trim().normalizeSpace();
System.debug(mySt + ' starts with this:' + mySt.startsWith('DML'));
System.debug(mySt + ' ends with this:' + mySt.endsWith('string'));
System.debug('---------2---------');
/**2. Create a String variable called message that contains a sentence with mixed case. 
for example : 'APEX mAde iT Easy to wOrk With SAlesforce DAtabase'
   - split to get List of String 
   - use for loop to go though each items
      - make each item TitleCase (lookup capitalize method from String class)
      - make sure to assign it back to yourList[i] so it actually update
   - outside your loop , print out to see latest change
   - join the list items with space 
      => re-assign back to the String variable message
      => expect 'Apex Made It Easy To Work With Salesforce Database'
 */

String messege = 'APEX mAde iT Easy to wOrk With SAlesforce DAtabase';
List<String> messegeList = messege.split(' ');

for (Integer i = 0; i < messegeList.size(); i++) {
  messegeList[i] = messegeList[i].tolowercase(); //apex
  messegeList[i] = messegeList[i].capitalize(); //Apex
}
System.debug('messegeList value is : ' + messegeList);
messege = String.join(messegeList, ' ');
System.debug('join value is  : ' + messege);
System.debug('----------3--------');

/**3. Create an empty List of Lead 
   - use for loop to go through 10 iteration 
   - add lead with FirstName, LastName, Company fields set
   -  'Test Lead FN 1' ,'Test Lead LN 1' , 'Company 1'
   -  'Test Lead FN 2' ,'Test Lead LN 2' , 'Company 2'
   ....
   -  'Test Lead FN 10' ,'Test Lead LN 10' , 'Company 10'
   insert the list into your org
 */
// List<Lead> emList = new List<Lead>();
// for (Integer i = 0; i <= 10; i++) {
//   emList.add(
//     new Lead(
//       FirstName = 'Test Lead FN' + i,
//       LastName = 'Test Lead LN' + i,
//       Company = 'Company' + i
//     )
//   );
// }
// System.debug('emList value is : ' + emList);
// //insert emList;

//Akbar example 

List<Lead> leadList = new List<Lead>(); 

for(Integer i=1; i<=10 ;i++) {
    
    // Test Lead FN 1  , Test Lead LN 1 , Company 1
    Lead ld = new Lead(FirstName = 'Test Lead FN '+i , 
                       LastName  = 'Test Lead LN '+i , 
                       Company   = 'Company '+i
                       ); 
    // add it to the list 
    leadList.add(ld) ; 
}
System.debug('leadList value is : ' + leadList); 

//insert leadList;

System.debug('---------4---------');
/**

4. Create a Lead with required Fields 
   - insert it into your org 
   - Create a Task variable and assign the value 
   - fill up with below fields
      - WhoId with the Id of the lead created above 
      - Priority 'High'
      - ActivityDate  Date 7 days from now  
*/
// Lead l1 = new Lead();
// l1.LastName = 'Ata';
// l1.Company = 'Apple';
// l1.Status = 'New';
// insert l1;

// Task l2 = new Task();
// l2.WhoId = l1.Id;
// l2.Priority = 'High';
// l2.ActivityDate = Date.today().addDays(7);
// insert l2;
//Akbar example

//Lead myLead = new Lead()
System.debug('--------5----------');

Lead myLead = new Lead(LastName='Skywalker', Company ='Galactic Empire');
System.debug('ld value before insert is : ' + myLead); 
insert myLead ; 
System.debug('ld value After insert is : ' + myLead); 

Task t1         = new Task(); 
t1.WhoId        = myLead.Id ; 
t1.Priority     = 'High' ; 
t1.ActivityDate = Date.today() + 7 ; // do same thing as addDays(7)
t1.Subject      = 'Task for Lead from Apex' ;
insert t1;
System.debug('t1 value is : ' + t1); 
/**
 
 5. Create List of Opportunity 
   - Add 10 items in it with valid Opportunity required fields filled up 
      - Name,  Opp - 1(2,3,4,5..10)
      - ClosedDate (10 days from Today), 
      - StageName ='Prospecting', 
      - Amount  random Integer between 0-100000
   - insert the list into your org 

   - Create an Account with Name = 'Parent of Cool Opp'
   - insert into Salesforce org 

   - Create an empty List of Opportunity called coolOppsList
      - Loop through your entire List of 10 items 
      - If amount is greater than 60000
         - Update AccountId field to Id of Account you created earlier
         - Add the Opportunity to coolOppsList

   - Update the coolOppsList in your org 
   - Go to user interface and observe you have filled up Account Name field of all opportunities amount over 60000 to 'Parent of Cool Opp' */
List<Opportunity> oppsList = new List<Opportunity>();

for (Integer i = 1; i <= 10; i++) {
  oppsList.add(
    new Opportunity(
      Name = ('Opp ' + i),
      CloseDate = (date.today()).addDays(10),
      StageName = 'Prospecting',
      Amount = Math.round(Math.random() * 100000)
    )
  );
}
System.debug('oppList value is : ' + oppsList);
insert oppsList;

Account acc1 = new Account();
acc1.Name = 'Parent of Cool Opp';
insert acc1;
List<Opportunity> coolOppsList = new List<Opportunity>();
for (Opportunity each : coolOppsList) {
    each.Amount = Math.round(Math.random()*100000 );
  if (each.Amount > 60000) {
    each.AccountId = acc1.id;
    coolOppsList.add(each);
  }
}
System.debug(coolOppsList);
insert coolOppsList;
