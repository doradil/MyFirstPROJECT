/**
Create a Map of Salesforce RecordId and sObject Type Account
add few items in it
 */
 Map<Id,Account> accMap = new Map<Id,Account>();

 accMap.put( '001Dn00000LBO7hIAH', new Account(Name='Cydeo1'));
 accMap.put( '001Dn00000LBO7hIAC', new Account(Name='Cydeo2'));
 accMap.put( '001Dn00000LBO7hIAD', new Account(Name='Cydeo3'));
 
 System.debug('accMap value is : ' + accMap); 