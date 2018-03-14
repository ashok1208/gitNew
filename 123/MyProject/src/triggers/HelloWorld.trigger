trigger HelloWorld on CandidateEnquiry__c (before insert) {
    
    System.debug('Hello World');

}