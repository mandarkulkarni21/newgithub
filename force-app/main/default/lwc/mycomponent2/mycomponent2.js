import { LightningElement } from 'lwc';

export default class Mycomponent2 extends LightningElement {
    numberOfEmpolyees = null;
    handleChange(event) {
        this.numberOfEmpolyees = event.detail.value;
    }
    reset() {
        this.numberOfEmpolyees = null;
    }
}