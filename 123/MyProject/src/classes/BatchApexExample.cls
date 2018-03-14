public class BatchApexExample implements  Database.Batchable<SObject>
{
    public Database.QueryLocator start(Database.BatchableContext bc)
    {
        return Database.getQueryLocator('select id, State__c from kumar__c');
    }
    
    public void execute(Database.BatchableContext bc, List<kumar__c> cList)
    {
        
        
        List<kumar__c> cUpdateList=new List<kumar__c>();
        
       
        for(kumar__c c: cList)
        {            
            c.State__c = 'TS';
            cUpdateList.add(c);
           
        }
        if(cUpdateList.size() > 0 && cUpdateList != null){
            Update cUpdateList;  // updating the records
        }
    }
    
/* note: // Once all the jobs executed then finish method will be executed only once the it will send an email regarding status of the job   */
    public void finish(Database.BatchableContext bc)
    {
        AsyncApexJob a=[select id,
                        status,
                        NumberOfErrors,
                        JobItemsProcessed,
                        TotalJobItems
                        from AsyncApexJob
                        where id=:bc.getJobId()];
        
        Messaging.SingleEmailMessage mail=new Messaging.SingleEmailMessage();
        string[] toadd=new string[]{'ashkbsha@gmail.com'};
        mail.setToAddresses(toadd);
        mail.setSubject('This is from batch class, status is , '+a.status);
        
        mail.setPlainTextBody('The Batch Apex Job Processed '+a.TotalJobItems+' batches with '+a.NumberOfErrors+' Failures');
             
        Messaging.sendEmail(new Messaging.SingleEmailMessage[]{mail});
    }
}