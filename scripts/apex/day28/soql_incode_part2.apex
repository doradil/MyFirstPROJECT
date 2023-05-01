// This will throw an error since we are trying to store many Account
// into a variable that hold single account
//System.QueryException: List has more than 1 row for assignment to SObject
 //AnonymousBlock: line 14, column 1
 //Account a = [Select Name from Account];
 //System.debug('a value is : ' + a);

 // SOQL Query inside [] is not a String
// If we want to use a variable, we must add: in front of the variable
// This is called bind variable: simply a variable inside SOQL
 String str = 'Green';
List<Contact> contactLst = [SELECT FirstName, LastName
                            FROM Contact
                            WHERE LastName =:str]; 
System.debug('contactLst value is : ' + contactLst);
// Create 2 String variables for caseStatus and casePriority
// Get All the cases with status of caseStatus and Priority of casePriority
// Store the result in List of Case
String caseStatus   = 'Closed'; 
String casePriority = 'High' ; 

List<Case> caseList = [SELECT Subject, Status, Priority FROM CASE
                        WHERE Status = :caseStatus AND Priority = :casePriority ] ; 
// print out Subject, Status, Priority for each Case
for(Case each : caseList) {
    System.debug('------------------');
    System.debug(each.Subject +'--'+ each.Status + '--' + each.Priority );
}
