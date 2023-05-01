//SOQL Set4, Task 4:
//Write a SOQL SELECT statement to 
//retrieve the Name , Account.Name and StageName fields 
//for all Opportunity records associated with an Account Super Parent 

//SELECT Name, Account.Name, StageName
//FROM Opportunity
//WHERE Account.Name = 'Super Parent'
//[10:55 PM]
//SOQL Set4 , Task 6:
//Write a SOQL SELECT statement to 
//retrieve the Subject , Contact.Name and Status fields 
//for all Cases records associated with an Contact Super Jon
//SELECT Subject, Contact.Name, Status 
// FROM Case
//WHERE Contact.Name = 'Super Jon' 
//[10:55 PM]
//SOQL set4, ## Task 5:
//Create a Contact called Super Jon under Account with name Super Parent in UI. 
//Now in Apex
//Get the Id of Contact with name Super Jon.
Id superJonId = [SELECT Id FROM Contact WHERE Name = 'Super Jon' LIMIT 1].Id;
//Get all the Cases with no Contact association (ContactId is empty)
List <Case> orphanCases = [SELECT CaseNumber FROM Case WHERE ContactId = NULL];
//and store it in the list called orphanCases. 
for(Case each:orphanCases){
    each.ContactId = superJonId;
}
//Add All the orphanCases under Contact with name Super Jon.
update orphanCases; 