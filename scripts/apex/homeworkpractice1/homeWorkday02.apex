Integer num1;
Integer num2, num3;

num1=11;
num2=10;
num3=9;
if(num1>num2 && num2>num3){
    System.debug('The first number is the largest');
}else{
    System.debug('The first number is not the largest');
}
System.debug('------------');

Integer cat=20;
if(cat > 0){
    System.debug(cat + ' is positive');
}else if(cat<0){
      System.debug(cat + ' is negative');
}else{
    System.debug(cat + ' is zero'); 
}
System.debug('------------');

String star = 'b';
if(star=='a'||star=='e'||star=='o'||star=='u'||star=='i'){
  System.debug(star + ' is a vowel');
}else{
      System.debug(star + ' is not a vowel ');

}System.debug('------------');

//1. Write a program that calculates the sum of all odd numbers from 1 to 
//100 using a for loop.
//(try out the same with while loop and do while loop as practice)

List<Integer>odd_nums= new List<Integer>();
for(Integer i=1 ;i<=100;i++){
    if(math.mod(i,2)!=0){
     odd_nums.add(i);
     
    }
System.debug(i);
}

