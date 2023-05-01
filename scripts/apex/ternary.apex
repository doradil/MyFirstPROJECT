Integer day=3;

String result=(day==1)?'Sunday' : (day==2)? 'Monday' :
(day==6)?'Friday':'saturday';

System.debug(day+'.day of the week is '+result);