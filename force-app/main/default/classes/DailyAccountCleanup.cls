public class DailyAccountCleanup implements Schedulable {
  public Void execute(SchedulableContext context) {
    List<Account> todaysAccount = [
      SELECT Id
      FROM Account
      WHERE CreatedDate = TODAY
    ];
    delete todaysAccount;
  }
}