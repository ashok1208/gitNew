public class AccountAutoAcontactHandler {
    public Static void AutoContact(list<Account> accList){        
        map<Id,Decimal> map1 = new map<Id,Decimal>();    	
    	for(Account acc:accList){
    		map1.put(acc.id,acc.Number_Of_Contacts__c);    
    	}    
    	if(map1.size() > 0 && map1 != null){
        	for(ID ids:map1.keySet()){
            	for(integer i=1;i<=map1.get(ids);i++){
                	contact con = new contact();
                	con.LastName = 'C-'+i;
                	con.AccountId = ids;
                	insert con;                
            	}
        	}        
    	}        
    }
}