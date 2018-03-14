public class AddMotorInsurenceCtrl {
    public Motor_Insurance__c cds{get; set;}
        
    public Motor_Insurance__c setcds(Motor_Insurance__c op){
        this.cds=op;
        return cds;
    }
    public AddMotorInsurenceCtrl (ApexPages.StandardController controller) {
        cds=new Motor_Insurance__c();
    }

    public pagereference SaveandNew(){
        Motor_Insurance__c cd = new Motor_Insurance__c();
        cd.Policy_Holder__c= cds.Policy_Holder__c;
        cd.Agent_ID__c= cds.Agent_ID__c;
        cd.Motor_Type__c= cds.Motor_Type__c;
        cd.Motor_Color__c= cds.Motor_Color__c;
        cd.Manufactured_Year__c= cds.Manufactured_Year__c;
        cd.Premium_Amount__c= cds.Premium_Amount__c;
        cd.No_of_Terms__c= cds.No_of_Terms__c;
        cd.Premium_Type__c= cds.Premium_Type__c;
        cd.Premium_Start_Date__c= cds.Premium_Start_Date__c;
        cd.Premium_End_Date__c= cds.Premium_End_Date__c;

        insert cd;
        
        Pagereference pg = new Pagereference('/apex/AddMotorInsurenceVF');
        pg.setredirect(true);
        return pg;


    }
    public pageReference save(){
        Motor_Insurance__c cd = new Motor_Insurance__c();
        
        cd.Policy_Holder__c= cds.Policy_Holder__c;
        cd.Agent_ID__c= cds.Agent_ID__c;
        cd.Motor_Type__c= cds.Motor_Type__c;
        cd.Motor_Color__c= cds.Motor_Color__c;
        cd.Manufactured_Year__c= cds.Manufactured_Year__c;
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