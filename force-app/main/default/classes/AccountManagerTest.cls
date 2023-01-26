@isTest
private class AccountManagerTest {
    @isTest static void testGetAccount() {
        Id accountId = createTestRecord();
        RestRequest request = new RestRequest();
        request.requestURI = 'https://yourInstance.my.salesforce.com/services/apexrest/Accounts/' + accountId + '/contacts';
        request.httpMethod = 'GET';
        RestContext.request = request;
        Account thisAccount = AccountManager.getAccount();
        System.assert(thisAccount != null);
        System.assertEquals('Test Record', thisAccount.Name);
        
    }
    
    static Id createTestRecord() {
        Account testAccount = new Account(Name = 'Test Record');
        insert testAccount;
        
        Contact testContact = new Contact(FirstName = 'Test', LastName = 'Contact', AccountId = testAccount.Id);
        insert testContact;
        
        return testAccount.Id;
    }
    
}