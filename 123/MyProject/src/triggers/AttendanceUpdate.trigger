trigger AttendanceUpdate on Student__c (after insert) {
    
    for(Student__c  s:trigger.new){
        list<Student__c> stu ;
        
        //Attendance__c att = [select id,Attendance2__c from Attendance__c where id=:s.];
        
        Attendance__c att = new Attendance__c();
        stu = [select id,Attendance2__c,name from Student__c where id=:att.Student_ID__c ];        
        att.Attendance2__c = true;
        update att;
    }
}