trigger UpdateKumarTrigger on Customer__c (after insert) {
    
    Kumar__c k;
    for(Customer__c c:trigger.new){
        k = [select HR__c,Developer__c from Kumar__c where id=:c.kumar__c];   
        if(c.Verified__c == 'HR'){
            if(k.HR__c == null)
                k.HR__c = c.Name;
            else
                k.HR__c = k.HR__c +';' +c.Name;
        }
        if(c.Verified__c == 'Developer'){
            if(k.Developer__c == null)
                k.Developer__c = c.Name;
            else
                k.Developer__c = k.Developer__c +';' +c.Name;
        }
    }
    UPDATE K; 
}