@isTest
public class TestRestrictContactByName {
    @isTest static void restrictContactByName() {
        Contact c = new Contact(LastName = 'INVALIDNAME');
        Test.startTest();
        Database.SaveResult result = Database.insert(c, false);
        Test.stopTest();
        
        System.assert(!result.isSuccess());
        
    }
    
}