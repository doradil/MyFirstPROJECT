public  class Bird extends Animal{


    public Bird(String name, String breed, Integer age, String size) {
        super(name, breed, age, size);
    }
    public void fly(){
        System.debug(name+'is flying');
}
public void chirp(){
    System.debug(name+'is chirping');
}
public void peck(){
    System.debug(name+'is pecking');
}
}