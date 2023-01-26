public class ParkLocator {
    public static string[] Country(string country) {
        ParkService.ParksImplPort parkService = new ParkService.ParksImplPort();
        
        return parkService.byCountry(country);
        
    }
    
}