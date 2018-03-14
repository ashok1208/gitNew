public class AddLifeInsurenceCtrl {
    public Life_Insurance__c cds{get; set;}
        
    public Life_Insurance__c setcds(Life_Insurance__c op){
        this.cds=op;
        return cds;
    }
    public AddLifeInsurenceCtrl (ApexPages.StandardController controller) {
        cds=new Life_Insurance__c ();
    }

    public pagereference SaveandNew(){
        Life_Insurance__c cd = new Life_Insurance__c();
               
        cd.Policy_Holder_Name__c= cds.Policy_Holder_Name__c;
        cd.Agent_ID__c= cds.Agent_ID__c;
        cd.Premium_Amount__c= cds.Premium_Amount__c;
        cd.No_of_Terms__c= cds.No_of_Terms__c;
        cd.Premium_Type__c= cds.Premium_Type__c;
        cd.Premium_Start_Date__c= cds.Premium_Start_Date__c;
        cd.Premium_End_Date__c= cds.Premium_End_Date__c;

        insert cd;
        
        Pagereference pg = new Pagereference('/apex/AddLifeInsurenceVF');
        pg.setredirect(true);
        return pg;


    }
    public pageReference save(){
        Life_Insurance__c cd = new Life_Insurance__c();
        
                
        cd.Policy_Holder_Name__c= cds.Policy_Holder_Name__c;
        cd.Agent_ID__c= cds.Agent_ID__c;
        cd.Premium_Amount__c= cds.Premium_Amount__c;
        cd.No_of_Terms__c= cds.No_of_Terms__c;
        cd.Premium_Type__c= cds.Premium_Type__c;
        cd.Premium_Start_Date__c= cds.Premium_Start_Date__c;
        cd.Premium_End_Date__c= cds.Premium_End_Date__c;
        
        insert cd;
        pagereference p = new pageReference('/'+cd.id);
        return p;
    
    }
    public PageReference Cancel(){
    
        pageReference g = new pageReference('/apex/IMSVF');
        
        return g;
    }
}