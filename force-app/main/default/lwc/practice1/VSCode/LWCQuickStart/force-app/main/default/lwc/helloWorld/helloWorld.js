import { LightningElement } from 'lwc';

export default class HelloWorld extends LightningElement {
  greeting = 'HelloWorld';

  changeHandler(event) {
    this.greeting = event.target.value;
  }

}