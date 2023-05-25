public virtual class Animal {
   
public String name ; 
public String breed;
public Integer age;
public String size;

public Animal( String name,
 String breed,
 Integer age,
 String size
){
    this.name=name;
    this.breed=breed;
    this.age=age;
    this.size=size;

}

public void eat(){
    System.debug(name +'is eating');
    
}
public void move(){
    System.debug(name + 'is moving');
    
}
   
}