trigger LoanActiveTri on kumar__c (after insert,before update) {    
    List<Loan__c> Loanlist = new List<Loan__c>();   
    list<kumar__c> klist = new list<kumar__c>();
    for(kumar__c ku:trigger.new){        
        if(ku.status__c == 'Active'){            
            Loan__c lo = new Loan__c();    	   
            lo = [select id,Active__c from Loan__c where ID =: ku.Loan_Person__c];                       
            lo.Active__c = true;            
            Loanlist.add(lo);                     
        } 
    }
    update Loanlist;
    
}