trigger GenderTri on Loan__c (before insert,before update) {
    for(Loan__c l:trigger.new){
        if (l.Gender__c == 'Male')
            l.Name = 'Mr .'+l.Name;
        else if(l.Gender__c == 'Female')
            l.Name = 'Mrs .'+l.Name;            
        else
            l.Name = l.Name;
        
    }

}