public class RandomContactFactory {
    public static List<Contact> generateRandomContacts(Integer nContacts, String lastName) {
        List<Contact> cts = new List<Contact>();
        
        for(Integer i = 0; i < nContacts; i++) {
            Contact c = new Contact(FirstName = 'Test' + i, LastName = lastName);
            Cts.add(c);
            
        }
        
        return cts;
    }
    
}