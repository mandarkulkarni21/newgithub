public with sharing class SOSLController{
    Public List<opportunity> optyList {get;set;}
    Public List<Contact> conList {get;set;}
    Public List<account> accList {get;set;}
    
    Public String searchStr{get;set;}
    Public SOSLController(){
        
    } 
   
    Public void soslDemo_method(){
        optyList = New List<opportunity>();
        conList = New List<Contact>();
        accList = New List<account>();
        if(searchStr.length() > 1){
            String searchStr = '*'+searchStr+'*';
            
            String searchQuery = 'Find \''+ searchStr +'\' IN ALL FIELDS RETURNING Account (Id,Name,type), Contact(name,email),Opportunity(name,StageName)';
                
                List<List <sObject>> searchList = search.query(searchQuery);
            accList = ((List<Account>)searchList[0]);
            conList = ((List<Contact>)searchList[1]);
            optyList = ((List<opportunity>)searchList[2]);
            
            if(accList.size() == 0 && conList.size() == 0 && optyList.size() == 0)
            {
                apexPages.addmessage(new apexpages.message(apexpages.severity.Error,
                'sorry,no results returned with matching string..'));
                
                return;
            }    
        }
        
        else
        {
            apexPages.addmessage(new apexpages.message(apexpages.severity.Error,
            'Please enter at least two characters..'));
        }
        
    }
}