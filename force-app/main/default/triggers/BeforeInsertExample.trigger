trigger BeforeInsertExample on Account (before insert) {

    
//BEFORE INSERT EXAMPLE
////EX:if the account industry is not null and has media as a value the populate the Ratting as Hot

    for(Account each : Trigger.new){
        if(each.Industry !=null && each.Industry =='Media'){
            each.Description = 'From Trigger';
            each.rating = 'Hot';
        }
    }
    
    
    
    
    
}