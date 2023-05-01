//## Task 3 Apex SOQL : 

//Get the Id of Account with name Super Parent.
//Get all the Opportunities with no Parent Account association (AccountId is empty)
//and store it in the list called orphanOpps. 
//Add All the orphanOpps under Account with name Super Parent.
Id superJonId = [SELECT Id FROM Contact WHERE Name = 'Super Jon' LIMIT 1].Id;
List <Case> orphanCases = [SELECT CaseNumber FROM Case WHERE ContactId = NULL];
for(Case each:orphanCases){
   // each.ContactId = superJonId;
}
update orphanCases;
//Task 3:
// //update orphanOpps;
//## Task 5:  Apex SOQL : 
//Create a Contact called Super Jon under Account with name Super Parent in UI. 
//Now in Apex
//Get the Id of Contact with name Super Jon.
//Get all the Cases with no Contact association (ContactId is empty)
//and store it in the list called orphanCases. 
//Add All the orphanCases under Contact with name Super Jon.

// Id superJonId = [SELECT Id FROM Contact WHERE Name = 'Super Jon' LIMIT 1].Id;

// List<Case> orphanCases = [SELECT CaseNumber FROM Case WHERE ContactId = Null];

// for(Case each : orphanCases) {
//     each.ContactId = superJonId;
// }

// update orphanCases;

