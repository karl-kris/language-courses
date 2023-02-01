@isTest
public with sharing class TestLanguageCourseTrigger {
    @isTest static void TestLanguageCourseTrigger() {
        Language_Course__c course = new Language_Course__c(Name='English');
        insert course;
        Test.startTest();
        Database.DeleteResult result = Database.delete(acct, false);
        Test.stopTest();
        System.assert(!result.isSuccess());
        System.assert(result.getErrors().size() > 0);
        System.assertEquals('Cannot delete account with related opportunities.',
                             result.getErrors()[0].getMessage());
    }
}