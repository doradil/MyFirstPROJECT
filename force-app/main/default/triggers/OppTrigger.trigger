trigger OppTrigger on Opportunity (before delete) {
    
    for(Opportunity opp : Trigger.old){
        
        if(Opp.StageName =='Closed Won'){
            
            opp.addError('Closed Won Opportunities can not be deleted');
            
        }
        
    }
   
}