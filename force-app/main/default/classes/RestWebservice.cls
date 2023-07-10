@RestResource(urlMapping='/Account/*')
global with sharing class RestWebservice {
      @HttpGet
    global static Account doget(){
        RestRequest req = RestContext.request;
        String accountId = req.requestURI.subString(req.requestURI.lastIndexof('/')+1);
        Account result = [SELECT ID , Name , Website , Phone FROM Account WHERE ID =:accountID];
        return result;
    }
}