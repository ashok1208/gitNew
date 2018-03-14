trigger AttendenceUpdate on Attendance__c (before insert) {
    
    for(Attendance__c att:trigger.new){
        
        if(att.Attendance2__c == false){
        
        	
        	att.Attendance2__c = true;
        
        	update att;
        }    
    }


}