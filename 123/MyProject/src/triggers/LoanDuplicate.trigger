trigger LoanDuplicate on Loan__c (before insert) {
    list<Loan__c> llist = new list<Loan__c>();
    for(Loan__c  lo:trigger.new){
        
        llist =[select id,name from Loan__c where name=:lo.name];
        if(llist.size() > 0)
            lo.addError('This Name IS Already Exist :'+lo.name);
        
    }

}