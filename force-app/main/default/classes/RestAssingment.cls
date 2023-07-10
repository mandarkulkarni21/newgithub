@RestResource(urlMapping='/Accounts')
global with sharing class RestAssingment{
	
    @HttpGet global static List<List<sObject>> httpGet() {
    String searchQuery=RestContext.request.requestURI.substringAfterLast('/');
    if(searchQuery instanceOf Id) {
        Account record = [SELECT Name, Phone, Website FROM Account WHERE Id = :searchQuery];
        return new List<List<sObject>> {
          new List<sObject> { record }
        };
    }
    return [FIND :searchQuery IN ALL FIELDS RETURNING Account(Name, Phone, Website)];
}
}