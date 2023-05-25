public class Flower {
    
    
    //Instance variable|Field
     public String color ;
     public Integer height;
     public Integer maxHeight;
     public Integer numberOfPetals;
     
    public void wilt(Integer count){
        System.debug('Petal dropped ' + count);
        numberOfPetals = numberOfPetals - count ;
        
    }
    
    
    
    
    
    
    
    
    
    //create a instance  method to add behaviour called grow
    public void grow(){
        System.debug('message from grow method : growing');
    }
    
    
    public void growTaller(){
        System.debug('growing more ');
        System.debug('growing much taller ');
        
    }

}