public  class Lion extends Animal{

    public Lion(String name, String breed, Integer age, String size) {
        super(name, breed, age, size);
    }
       
    public void roar (){
            System.debug(name +'is roaring');
    }
    public void hunt(){
        System.debug(name +'is hunting');
    }
}