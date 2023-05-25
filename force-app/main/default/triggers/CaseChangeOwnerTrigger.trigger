trigger CaseChangeOwnerTrigger on Case (before insert) {
for(case each :trigger.new) {
   if (each.Status =='New'||each.Status=='Working') {
    each.OwnerId=UserInfo.getUserid();
   }
   }

}