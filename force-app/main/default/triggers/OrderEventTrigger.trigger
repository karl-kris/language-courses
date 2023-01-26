trigger OrderEventTrigger on Order_Event__e (after insert) {
    List<Task> taskList = new List<Task>();
    
    for(Order_Event__e event : Trigger.New) {
        if(event.Has_Shipped__c == true) {
            Task newTask = new Task();
            newTask.Priority = 'Medium';
            newTask.Subject = 'Follow up on shipped order 105';
            newTask.OwnerId = event.CreatedById;
            
            taskList.add(newTask);
            
        }
        
    }
    
    insert taskList;
    
}