trigger AccountTriger on Account (before insert,before update,after insert, after update) {
    
    if(Trigger.isInsert&&Trigger.isBefore){
        
        for(Account ac : Trigger.new){
            
            if(String.isBlank(ac.Rating)){
                
                ac.rating.addError('You can not add an Account without rating');
            }  
        }
          if(Trigger.isUpdate && Trigger.isBefore){
              for(Account acNew : Trigger.new){
                    if(acNew.Name!=Trigger.oldMap.get(acNew.Id).Name){
                          acNew.Name.addError('You can not change the name of the Account');
                      
                 
                  }
                  
              }
            
        }
}
    }