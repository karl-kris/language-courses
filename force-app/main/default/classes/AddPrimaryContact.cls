public class AddPrimaryContact implements Queueable {
	private Contact contact;
    private String stateAbb;
   
    public AddPrimaryContact(Contact contact, String stateAbb) {
        this.contact = contact;
        this.stateAbb = stateAbb;
        
    } 
    
    public void execute(QueueableContext context) {
        List<Account> accounts = [SELECT Id, Name, (SELECT FirstName, LastName, Id FROM Contacts)
                                  FROM Account
                                  WHERE BillingState = :stateAbb lIMIT 200];
        
        List<Contact> contacts = new List<Contact>();
        
        for(Account account : accounts) {
            Contact auxContact = contact.clone();
            auxContact.AccountId = account.Id;
            contacts.add(auxContact);
            
        }
        
        insert contacts;
        
    }
    
}