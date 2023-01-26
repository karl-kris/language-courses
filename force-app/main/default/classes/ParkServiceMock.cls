@isTest
global class ParkServiceMock implements WebServiceMock {
	global void doInvoke(
    	Object stub,
        Object request,
        Map<String, Object> response,
        String endpoint,
        String soapAction,
    	String requestName,
        String responseNS,
        String responseNam,
        String responseType
    ) {
    
        ParkService.byCountryResponse response_x = new ParkService.byCountryResponse();
        response_x.return_x = new List<String>{'park1', 'park2', 'park3', 'park4'};
        response.put('response_x', response_x);
        
    }
        
}