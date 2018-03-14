public class kumarCtrl {

    public kumarCtrl(ApexPages.StandardSetController controller) {
    
        kulist = [Select Id,name,Bill__c,Status__c from Kumar__c ];

    }

    public list<kumar__c> kulist {set;get;}
    
    public kumarCtrl(){
        
        
    
    }    
}