trigger CusomerDiscount on Customer__c (before insert,before update) {
    Customer__c cust = new Customer__c();
   
    for(Customer__c cust:trigger.new){
        if(cust.Ammount__c >= 10000){
            if(cust.Country__c == 'INDIA' && cust.States__c == 'TS')
                cust.Discount__c = cust.Ammount__c - (cust.Ammount__c * 0.5);
            else if(cust.Country__c == 'INDIA' && cust.States__c == 'AP')
                cust.Discount__c = cust.Ammount__c - (cust.Ammount__c * 0.4);
            else if(cust.Country__c == 'INDIA' && cust.States__c == 'Others')
                cust.Discount__c = cust.Ammount__c - (cust.Ammount__c * 0.3);
            else if(cust.Country__c == 'US' || cust.Country__c == 'UK' || cust.Country__c == 'AUS')
                cust.Discount__c =cust.Ammount__c - (cust.Ammount__c * 0.2);
    	}
        else  
            cust.addError('Minimum Ammount is "10000" :');
    }   
}