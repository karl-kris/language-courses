@isTest
private class AccountProcessorTest {
    @isTest private static void testCountContacts() {
        Account testAccount = new Account(Name ='Test Account');
        insert testAccount;
        
        Contact testContact1 = new Contact(FirstName = 'Test', LastName = 'Contact1', AccountId = testAccount.Id);
        insert testContact1;
        
        Contact testContact2 = new Contact(FirstName = 'Test', LastName = 'Contact2', AccountId = testAccount.Id);
        insert testContact2;
        
        List<Id> accountIds = new List<Id>();
        accountIds.add(testAccount.Id);
        
        System.Test.startTest();
        AccountProcessor.countContacts(accountIds);
        System.Test.stopTest();
        
    }
    
}