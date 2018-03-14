trigger ChildUpdate on Master__c (after insert,after update) {
    list<Master__c > mlist;
    list<Child__c> clist;
    Child__c c; 
    
    for(Master__c m:trigger.new){
        
        c = [select id,Ammount__c from Child__c where id =: m.name]; 
               
        c.Ammount__c = m.Ammount__c;
        
        clist.add(c);
        
        insert clist;
        
        
        
    }     
        
}