import { LightningElement } from "lwc";
export default class Practice11 extends LightningElement {

searchKey = '';
foodArray = [
	{ id: 1, foodName: 'Pizza' },
	{ id: 2, foodName: 'Burger' },
	{ id: 3, foodName: 'Pasta' },
	{ id: 4, foodName: 'Sushi' },
	{ id: 5, foodName: 'Taco' },
	{ id: 6, foodName: 'Salad' },
	{ id: 7, foodName: 'Sandwich' },
	{ id: 8, foodName: 'Fried Chicken' },
	{ id: 9, foodName: 'Steak' },
	{ id: 10, foodName: 'Lobster' }
];
handleSearchKeyChange(event){
this.searchKey=event.target.value;
}
}