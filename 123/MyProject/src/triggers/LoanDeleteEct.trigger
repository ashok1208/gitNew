trigger LoanDeleteEct on Loan__c (before Delete) {
    for(Loan__c l:trigger.old){
        l.addError('Error! You cant delete this record: '+l.name);
    }
}