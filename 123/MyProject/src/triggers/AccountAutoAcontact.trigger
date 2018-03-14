trigger AccountAutoAcontact on Account (after insert,after update) {
    map<Id,Decimal> map1 = new map<Id,Decimal>();
    list<Contact> con;
    list<contact> updatecon = new list<contact>();
    Account acc = new Account();
    for(Account acc:trigger.new){
    	map1.put(acc.id,acc.Number_Of_Contacts__c);    
    }    
    if(map1.size() > 0 && map1 != null){
        for(ID ids:map1.keySet()){
            for(integer i=1;i<=map1.get(ids);i++){
                
                con = [select Id,lastname,Description from contact where accountid=:ids];
                for(contact c:con){
                    
                    if(trigger.isInsert){
                        c.Description = acc.Description;
                        updatecon.add(c);
                        insert updatecon;
                    }                    
                    else if(trigger.IsUpdate){
                        c.Description = acc.Description;
                        updatecon.add(c);
                        update updatecon;                        
                    }
                }
                              
            }
        }
        
    }
	update updatecon;
}