trigger KumarUpdate on Loan__c (after insert,before update) {    
    list<kumar__c> klist = new list<kumar__c>();
    list<Loan__c> llist = new list<Loan__c>();
    kumar__c ku;
    for(Loan__c lo:trigger.new){
        
        ku = [select id,Developer__c,HR__c from kumar__c where id=:lo.kumar_Lookup__c];
        
        if(lo.Competer_Type__c == 'Developer'){
            if(ku.Developer__c == null)
                ku.Developer__c = lo.Name;
            else
                ku.Developer__c = ku.Developer__c + ' ; ' + lo.Name;
            klist.add(ku);
        }
        else if(lo.Competer_Type__c == 'HR'){
            if(ku.HR__c == null)
                ku.HR__c = lo.Name;
            else
                ku.HR__c = ku.HR__c + ' ; ' + lo.Name;
            klist.add(ku);    
        }
    }
    if(klist.size() > 0 && klist.size() != null){
        update klist;
    }
    update llist;
}