public class Cat extends Animal {
  public Cat(String name, String breed, Integer age, String size) {
    super(name, breed, age, size);
  }

  public void meow() {
    System.debug(name + 'is meowing');
  }
  public void scratch() {
    System.debug(name + 'is scratching');
  }
  public void sleep() {
    System.debug(name + 'is sleep');
  }
}