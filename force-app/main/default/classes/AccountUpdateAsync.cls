public class AccountUpdateAsync implements Queueable {
  String description;
  List <Account>accListToProcess;


  public AccountUpdateAsync(String description,List <Account>accListToProcess) {
    this.description = description;
    this.accListToProcess=accListToProcess;
  }


  public void execute(QueueableContext context) {
    System.debug('Running some awesome code in AccountUpdateAsync');
    //Print out value of description field
    System.debug('description  value is : ' + description);

  //update the description field of theList of account to
  //the description provided.

   for (Account each : accListToProcess) {
    each.Description=this.description;
   
   }
   update accListToProcess;
   
//RIGHT AFTER WE ARE DONE WITH ACCOUNT UPDATE
//we want to perform another aysnc code
//that need to happen right after account update
  }
}