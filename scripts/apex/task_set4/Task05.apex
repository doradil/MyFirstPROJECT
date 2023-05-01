List<String>names
      =new List<String> {'dora','atakan','abdullah','alikemal','yusuf','dora','5625526hgcvfc'};

Set<String> setNames=new Set<String>{};

for(String eachName:names){
setNames.add(eachName);
}
System.debug('setNames:' +setNames.toString());
System.debug('names:'+names.toString());