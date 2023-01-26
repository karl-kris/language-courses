public class DailyLeadProcessor implements Schedulable {
    public void execute(SchedulableContext ctx) {
        List<Lead> leads = [SELECT Id FROM Lead WHERE LeadSource = null LIMIT 200];
        
        List<Lead> leadsToUpdate = new List<Lead>();
        
        for(Lead lead : leads) {
            lead.LeadSource = 'Dreamforce';
            leadsToUpdate.add(lead);
            
        }
        
        update leadsToUpdate;
        
    }
    
}