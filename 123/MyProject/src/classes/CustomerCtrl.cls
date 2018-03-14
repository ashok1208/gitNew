public class CustomerCtrl {

    public CustomerCtrl(ApexPages.StandardSetController controller) {
    
        custlist = [select name,Country__c,States__c,Ammount__c from Customer__c];

    }
    
    public list<Customer__c> custlist {set;get;}
    
    public CustomerCtrl(){
        
        
    }
    
    

}