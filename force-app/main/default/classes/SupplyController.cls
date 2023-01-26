public with sharing class SupplyController {
    public List<Supply__c> getSupplies() {
        List<Supply__c> supplies = [Select Name, Quantity__c, Total_Cost__c, Unit_Cost__c, 
                                    Battle_Station__c, CreatedById from Supply__c order by Total_Cost__c desc];


        return supplies;
    }
}