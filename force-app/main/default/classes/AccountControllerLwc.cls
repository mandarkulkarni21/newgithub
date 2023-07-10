/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 07-07-2023
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public with sharing class AccountControllerLwc {
    @AuraEnabled(cacheable=true)
    
    public static List<Account> queryRelatedContacts(String accId) {
           return[
            SELECT Id,AccountId, FirstName ,LastName,Email, Phone
            Account.Name
            FROM Contact
            WHERE AccountId = :accId
           ]
    }
}