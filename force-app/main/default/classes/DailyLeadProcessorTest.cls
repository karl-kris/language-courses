@isTest
private class DailyLeadProcessorTest {
    static testmethod void testScheduledJob() {
        String CRON_EXP = '0 0 0 12 01 ? 2023';
        List<Lead> leads = new List<Lead>();
        
        for(Integer i = 0; i < 200; i++)
            leads.add(new Lead(LastName = 'Lead' + i, Company = 'Test'));
        
    
    
    insert leads;
    
    System.Test.startTest();
    String jobId = System.schedule('ScheduledApexTest', CRON_EXP, new DailyLeadProcessor());
    System.Test.stopTest();
    
    List<Lead> checkLeads = [SELECT Id FROM Lead WHERE LeadSource = null LIMIT 200];
    System.assertEquals(0, checkLeads.size());

    }
}