import { LightningElement, wire } from 'lwc';
import getAccountWithAnnualRevenue from '@salesforce/apex/AccountController.getAccountWithAnnualRevenue';

let columnList = [
  { label: 'Account Name', fieldName: 'Name'},
  { label: 'Annual Revenue', fieldName: 'AnnualRevenue'}
];

export default class AccountController extends LightningElement {
  accounts;
  error;

  @wire(getAccountWithAnnualRevenue)
  wiredAccounts({ error, data }) {
    if (data) {
      this.accounts = data;
      this.error = undefined;
    } else if (error) {
      this.error = error;
      this.data = undefined;
    }
  }

  get columnList() {
    return columnList;
  }
}