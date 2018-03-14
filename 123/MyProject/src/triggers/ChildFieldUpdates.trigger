trigger ChildFieldUpdates on Child__c (after insert,after update){    
    
    for(Child__c ch:trigger.new){           
            Parent__c p = [Select id,Status__c from Parent__c where id=:ch.Parent__c];
        	if(ch.Ammount__c < 100000)
            	p.Status__c = 'InActive';
        	else
                p.Status__c = 'Active';
        
            update p;
        	
        	Master__c m = [Select id,Account_Type__c from Master__c where id =: ch.Master__c];
        	if(ch.Ammount__c < 100000)
                m.Account_Type__c = 'Savings';
        	else
        		m.Account_Type__c = 'Current';
        
        	update m;        
        if(ch.Ammount__c < 10000)
            ch.addError('Minimun Ammount Is "10000"');
    }    
    
}