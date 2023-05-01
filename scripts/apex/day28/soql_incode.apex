/** 
Get 1 Account Record (Name, AnnualRevenue, Rating) 
SELECT Name, AnnualRevenue, Rating FROM Account LIMIT 1
and Store it into Account variable
 */

/** 
Apex and SOQL Work Seamlessly together
We can use SOQL to get data and store it into
sObject type or list sObject type
[YOUR SOQL GOES HERE]
 */

Account a1 = [SELECT Name, AnnualRevenue, Rating,Phone FROM Account LIMIT 1];
System.debug('a1 value is : ' + a1);
System.debug('a1.Phone value is : ' + a1.Phone );
// Print out the size of the list

// Print out the Name, Rating in the loop 

list<Account>accList = [SELECT Name, AnnualRevenue, Rating,Phone FROM Account where Rating!=null];
System.debug('accList.size() value is : ' + accList.size());
for(Account each : accList) {
    System.debug('Name  value : ' + each.Name +'Rating value :'+each.Rating);
}
// Get All the Lead Name, Status if the status is Working - Contacted
    // Store it into the list and loop through each item
    // print the name and status

  List<Lead> leadLst = [SELECT Name, Status FROM LEAD
                      WHERE Status = 'Working - Contacted' ] ; 

for(Lead each : leadLst) {
    System.debug(each.Name + ' | ' + each.Status  );
}
