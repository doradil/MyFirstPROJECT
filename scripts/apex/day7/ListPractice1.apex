/**

Declare List variable initilize it's value 
and add all the items in one shot 

List<DataType> lstName 
        = new List<DataType>{item1, item2,.....itemN} ; 

 */

List<String> groceries = new List<String>{'Milk','Bread','Egg','Coffe'};

System.debug(groceries);

//Create list of Integer and add 5 value in one shot
List<Integer> numList = new List<Integer>{1,2,3,4,5};
System.debug(numList);

//Create list of Decimal and add 5 value in one shot
List<Decimal>prices = new List<Decimal>{1.99,2.99,5.99,100.99,0.99};
System.debug(prices);

//Create list of ID and add 2 value in one shot
List<Id> accountIds = new List<Id>{'0018W00002510K6QAM',
                                    '0018W00002510K6QAN',
                                    '0018W00002510K6QAZ',
                                    '0018W00002510K6QAB',
                                    '0018W00002510K6QAE' };

 System.debug(accountIds);

 //Create a List of Boolean add 5 items into it

 List<Boolean> answers = new List<Boolean>{true,false,true,true,falce};
 System.debug(answers);