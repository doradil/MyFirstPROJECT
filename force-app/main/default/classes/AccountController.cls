
//with sharing will enforce record 
public with sharing class AccountController {

/**
 * Create a static method called getAllAccount
 * @return all the accounts in your salesforce org
 * 
 */
public static List<Account>getAllAccounts(){
    return[SELECT Name, AnnualRevenue FROM Account SECURITY_ENFORCE];
}
    
   /**
     * Create a static method called getAccountWithAnnualRevenue
     * @return List of Accounts in your salesforce org 
     * with AnnualRevenue Field filled up
     */
    public static List<Account> getAccountWithAnnualRevenue(){

        // List<Account> lst = [SELECT Id,Name, AnnualRevenue 
        //         FROM Account 
        //         WHERE AnnualRevenue != null] ; 
        // return lst ; 

        return [SELECT Id,Name, AnnualRevenue 
                FROM Account 
                WHERE AnnualRevenue != null] ; 

    }

    /**
     * Create a static method called getMaxRevenue
     * @return max AnnualRevenue for all Accounts in your salesforce org 
     */
    public static Decimal getMaxRevenue(){
         
        AggregateResult result = [SELECT MAX(AnnualRevenue) HighestRevenue 
                                 FROM Account];
        
        Decimal max =  (Decimal) result.get('HighestRevenue') ; 
     
        return max; 
 
     }
     /**
 * Create a method called getAccOpps
 * @param accName name of account you want to get child opportunity
 * @return List of Opportunity that belong to this account
 * just look for first match account name
 */

 public static List<Opportunity> getAccOpps(String accName){

  // [SELECT Id, Name, Account.Name
  // FROM Opportunity
  // WHERE Account.Name = 'Skywalker Inc'];


  Account acc =[SELECT Id,Name, (SELECT Id,Name from Opportunities)
  FROM Account
  WHERE Name = :accName LIMIT 1];

  //acc.Name =>account name from the query
  //acc.Id==>account id from the query
  //acc.Opportunities ==>> all the childs returned here
  return acc.Opportunities;
 }
}