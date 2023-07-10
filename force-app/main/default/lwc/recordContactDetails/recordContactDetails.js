import { LightningElement,track,wire,api } from 'lwc';
import queryRelatedContacts from'@salesforce/apex/AccountControllerLwc.queryRelatedContacts';

export default class RecordContactDetails extends LightningElement {
    @api recordId;
    @track columns = [{}
    ];
    @wire(queryRelatedContacts, {accId: '$recordId'}) contacts;
}