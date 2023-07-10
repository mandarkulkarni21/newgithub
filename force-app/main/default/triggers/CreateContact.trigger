trigger CreateContact on Account (after insert) {
   
    List<Contact> lstContacts = new List<Contact>();
    for(Account acc:Trigger.new)
   {
      Contact cnt = new Contact(LastName = acc.name, AccountId= acc.Id);
       System.debug('account created'+acc.Id);
       lstContacts.add(cnt);
                               
   }
    insert lstContacts;
}