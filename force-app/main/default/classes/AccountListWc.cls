/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 07-06-2023
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/

public with sharing class AccountListWc {
    @AuraEnabled(cacheable=true)
    public static List<Account> queryAccountByEmployeeNumber(Integer numberOfEmployees) {
        return[
            SELECT name
            FROM Account
            WHERE NumberOfEmployees >= :numberOfEmployees

        ];

    }
}