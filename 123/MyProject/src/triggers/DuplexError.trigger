trigger DuplexError on Customer__c (before insert) {
    
    for(Customer__c cust:trigger.new){
        
        List<Customer__c> custList = [select Id,name from Customer__c where name=:cust.Name];    
        
        if(custList.size() > 0){
            
        	cust.addError('Name is Already Exist  :'+cust.Name);
            
        }    
    }
}