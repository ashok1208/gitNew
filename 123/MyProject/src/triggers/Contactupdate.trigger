trigger Contactupdate on Contact (before insert,before update) {
    for(Contact con:trigger.new){
        if(con.Gender__c == 'Male')
            con.FirstName = 'Mr. '+con.FirstName;
        else if(con.Gender__c == 'Female')
            con.FirstName = 'Miss. '+con.FirstName;
        else
            con.FirstName = con.FirstName;     
    }
    for(contact con:trigger.new){
        if(trigger.isinsert)
            con.Welcome_Note__c = 'Welcome New User '+con.LastName;
        if(trigger.isupdate)
            con.Welcome_Note__c = 'Welcome Old User '+con.LastName;
    }
    for(contact con:trigger.old){
        con.addError('Sorry! you can not delete this record');
    }  
}