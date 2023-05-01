List<Integer> numberList = new List<Integer>{37,26,77,45,58,11,22,33,4,5,7};

Integer sum = 0 ;

for(Integer each : numberList) {
    System.debug('Current value : ' + each);
    sum+=each;
    if( sum > 100 ){
        break;
    }

}

  System.debug('sum value is : ' + sum);   
