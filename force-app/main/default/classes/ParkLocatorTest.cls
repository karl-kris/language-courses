@isTest
private class ParkLocatorTest {
    @isTest static void testCallout() {
        Test.setMock(WebServiceMock.class, new ParkServiceMock());
        String country = 'United States';
        List<String> result = ParkLocator.Country(country);
        List<String> parks = new List<String>{'park1', 'park2', 'park3', 'park4'};
        System.assertEquals(parks, result);
        
    }
    
}