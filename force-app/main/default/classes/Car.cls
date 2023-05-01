//public virtual class Car {
    /**
     * Abstract keyword used on the class with mark the class as abstract class
     * It can not be instantiated meaning you can not directly create Car object
     * using new keyword
     * Abstract Class meant to parent class that extended by Child classes
     * Abstract methoddoes not have a body (mining no{}at all)
     * abstract method must be overridden in the child or it will not complated
     */
    public abstract class Car {
        
    

  public String model ; 
  public Decimal price ; 

  // write a constructor to initialize default values for model, price
  // model : unknown model, price 10000
  public Car(){     
      // this.model = 'unknown model' ; 
      // this.price = 10000 ; 
      this('unknown model', 10000);
  }

  public Car(String model,Decimal price ){

      this.model = model ; 
      this.price = price ; 
  }

  /**
   * it should print message as below 
   * Car ModelGoesHere is driving
   * 
   * if a method is marked as virtual 
   * it can be overriden in the child class 
   */
  public virtual void drive(){

      System.debug('Car '+ this.model + ' is driving'); 
      
  }

  public abstract void drive();

}