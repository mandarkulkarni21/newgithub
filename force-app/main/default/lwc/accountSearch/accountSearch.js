import { LightningElement ,wire} from 'lwc';
import queryAccountByEmployeeNumber from '@salesforce/apex/AccountListWc.queryAccountByEmployeeNumber';

export default class AccountSearch extends LightningElement {
    numberOfEmpolyees = null;
    handleChange(event) {
        this.numberOfEmpolyees = event.detail.value;
    }
    reset() {
        this.numberOfEmpolyees = null;
    }
    @wire(queryAccountByEmployeeNumber, { numberOfEmpolyees: '$numberOfEmpolyees'})
    accounts;
}