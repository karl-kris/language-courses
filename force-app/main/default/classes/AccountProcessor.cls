public class AccountProcessor {
	@future
    public static void countContacts(List<Id> accountIds) {
    	List<Account> accountsToUpdate = new List<Account>();    
        List<Account> accounts = [SELECT Id, Name, (SELECT Id from Contacts)
                                  FROM Account
                                  WHERE Id in :accountIds];
        
        for(Account a : accounts) {
            List<Contact> contactList = a.Contacts;
            a.Number_Of_Contacts__c = contactList.size();
            accountsToUpdate.add(a);
            
        }
        
        update accountsToUpdate;
        
    }
    
}