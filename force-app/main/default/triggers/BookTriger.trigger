trigger BookTriger on Book__c ( before insert, after insert,
before update, after update,
before delete, after delete,
after undelete) {


    System.debug('Trigger is running for Event : ' + Trigger.OperationType) ;
    //Requirement : When the new book is created or updated
 //if the year is empty ==> set it to 1999
   // THIS NEED TO BE WRITTEN IN BEFORE_INSERT OR BEFORE_UPDATE
   if(Trigger.isBefore && (Trigger.isInsert||Trigger.isInsert)){
    //Start with Trigger loop
    for(Book__c each : Trigger.new) {
        if (each.Year__c == null) {
            each.Year__c=1999;
            
        }
        
    }

   }
}