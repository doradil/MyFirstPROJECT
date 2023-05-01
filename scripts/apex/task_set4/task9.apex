List<String> accountOwners = new List<String>{'John White', 'Andy Young', 'Jon Snow', 'Avi Green', 'Jane Gray',
                                            'Jon Snow', 'Josh Davis'};
Integer countName = 0;
for(String eachAccountOwner:accountOwners){

    if(eachAccountOwner=='Jon Snow'){
        System.debug(eachAccountOwner);
        countName+=1;
        }
}    
System.debug(countName);