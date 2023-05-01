String season = 'winter';
 if(season == 'winter'){
    System.debug('wear your boots');
 }else if(season == 'spring'){
    System.debug('wear your sneakers');
 }else if(season == 'summer'){
    System.debug('wear your sandals');
 }else{
    System.debug('wear your loafers');
 }


 System.debug('**********');

String season1 = 'summer';

switch on season1{
    when 'winter'{
        System.debug('wear your boots');
    }when 'spring'{
        System.debug('wear your sneakers');
    }when 'summer'{
        System.debug('wear your sandals');
    }when else{
        System.debug('wear your loafers');
    }
}

 System.debug('**********');
 Integer n = 2;

for(Integer count=1 ; count<=10 ; count++){

System.debug(count + ' X ' +n+ ' = ' + (count*n));
}


System.debug('**********');
List<String> cars= new List <String>{'Ford','Tayota','BNW'};
 System.debug(cars);
 cars.add('Mercedes');
 cars.add('Honda');
 cars.set(1,'Tesla');
 System.debug(cars);

 Boolean isHonda=cars.contains('Honda');
 System.debug(isHonda);
 System.debug(cars.get(3));
 cars.clear();
 System.debug(cars.isEmpty());

 System.debug('**********');
Set<Integer> mySet = new Set<Integer>();

mySet.add(1);
mySet.add(3);
mySet.add(1);
mySet.add(1);
mySet.add(2);
System.debug(mySet);

System.debug(mySet.size());

mySet.remove(2);
System.debug(mySet); 


System.debug('**********');

set<Decimal>prices = new set<Decimal>{4.00,6.99,8.50,3.25};
prices.add(0.99);
prices.add(6.99);
System.debug(prices);
Decimal  sum = 0;
for(Decimal eachPrices :prices){
    sum = sum + eachPrices;

}
System.debug('Total is ' +sum);
System.debug('**********');

List<String> names = new List<String>{'John', 'Ken', 'Mary', 'Ben', 'John', 'Akbar', 'Arife',
                                            'Nina', 'Arife', 'Ben'};
Set<String> noDuplicateNames = new Set<String>();
System.debug(names.size());

for(String eachName:names){
 System.debug(eachName);
 noDuplicateNames.add(eachName);
}
System.debug(noDuplicateNames);
System.debug(noDuplicateNames.size(eachName));