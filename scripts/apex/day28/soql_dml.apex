// Get all the books with no price set store it into the list
// Set all the price value 999


List<Book__c>bookList=[SELECT Name, price__c, Year__c
FROM BOOK__C
WHERE Price__c = null ];
//for(Book__c each : bookList) {
   // each.Price__c = 999;
//}
//use DML to update
///update bookList;
// use dml to update
  // update bookLst; 
// you can only run this once
// because once you update price to 999 the query will return empty list

// Alternative approach:
// when we updated list of records, we got from SOQL or Trigger
// it's always best to create new Empty list to store updated content
// and do DML operation on that List
List<Account> toBeDeletedAccounts = [SELECT Id, Name FROM Account
                                        WHERE Name = 'Acc from Apex']; 
System.debug('deleted accounts : ' + toBeDeletedAccounts.size() );
    
   update updateList; 