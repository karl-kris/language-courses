@isTest
public class TestVerifyDate {
    @isTest static void verifyDate1() {
        Date d = VerifyDate.CheckDates(date.parse('09/11/2022'), date.parse('12/11/2022'));
        System.assertEquals(date.parse('12/11/2022'), d);
        
    }
    
    @isTest static void verifyDate2() {
        Date d = VerifyDate.CheckDates(date.parse('09/11/2022'), date.parse('14/12/2022'));
        System.assertEquals(date.parse('30/11/2022'), d);
        
    }
    
}