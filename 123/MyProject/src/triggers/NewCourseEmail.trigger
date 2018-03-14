trigger NewCourseEmail on Course__c (after insert) {
    
    list<String> mail = new list<String>();
	list<CandidateEnquiry__c> add1 = [select Candidate_Name__c,Email_ID__c from CandidateEnquiry__c];
    list<Messaging.singleEmailMessage> singleEmailMessageList = new list<Messaging.singleEmailMessage>();
    
    for(CandidateEnquiry__c c:add1){
        if(c.Email_ID__c != NULL)
        	mail.add(c.Email_ID__c);
    }
    
    for(Course__c obj:trigger.new){
    	    Messaging.singleEmailMessage m = new Messaging.singleEmailMessage();
        	m.setToAddresses(mail);
        	m.setSubject(obj.Course_Name__c +' is starting ');
        	m.setPlainTextBody('Dear'+' Candidate'+
                               ',the following course is starting shortly in our Institute'+'           '+
                               'Course Name : '+ obj.Course_Name__c +
                               'Course Starting Date : ' +obj.Course_Starting_Date__c +
                               'Course Ending Date : ' +obj.Course_Closing_Date__c  +
                               'Course Duration : ' +obj.Course_Duration__c +
                               'Faculty  : ' +obj.Faculty__c  +
                               'Contact No : ' +obj.Contact_No__c  +                               
                               'Regards,' +
                               'Rina' );
        	singleEmailMessageList.add(m);
        
    }
    
    if(singleEmailMessageList != NULL && singleEmailMessageList.size() > 0)
        Messaging.sendEmail(singleEmailMessageList);
        
}