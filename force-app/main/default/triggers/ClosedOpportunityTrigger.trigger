trigger ClosedOpportunityTrigger on Opportunity (after insert, after update) {
    List<Task> listTask = new List<Task>();
    
    for(Opportunity opportunity : Trigger.New) {
        if(opportunity.StageName == 'Closed Won')
            listTask.add(new Task(Subject = 'Follow Up Test Task', WhatId = opportunity.Id));
        
    }
    
    if(listTask.size() > 0)
        insert listTask;
    
}