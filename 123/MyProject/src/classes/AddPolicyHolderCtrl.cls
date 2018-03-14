public class AddPolicyHolderCtrl {
    public Policy_Holder__c cds{get; set;}
        
    public Policy_Holder__c setcds(Policy_Holder__c op){
        this.cds=op;
        return cds;
    }
    public AddPolicyHolderCtrl(ApexPages.StandardController controller) {
        cds=new Policy_Holder__c();
    }

    public pagereference SaveandNew(){
        Policy_Holder__c cd = new Policy_Holder__c();
        cd.name = cds.name;
        cd.Date_of_Birth__c = cds.Date_of_Birth__c ;
        cd.Gender__c = cds.Gender__c;
        cd.Phone__c = cds.Phone__c;
        cd.Email__c = cds.Email__c;
        cd.Occupation__c= cds.Occupation__c;
        cd.Income__c= cds.Income__c;
        cd.Address__c = cds.Address__c;
        cd.Agent_ID__c = cds.Agent_ID__c;
        
        insert cd;
        
        Pagereference pg = new Pagereference('/apex/AddPolicyHolderVF');
        pg.setredirect(true);
        return pg;


    }
    public pageReference save(){
        Policy_Holder__c cd = new Policy_Holder__c();
        cd.name = cds.name;
        cd.Date_of_Birth__c = cds.Date_of_Birth__c ;
        cd.Gender__c = cds.Gender__c;
        cd.Phone__c = cds.Phone__c;
        cd.Email__c = cds.Email__c;
        cd.Occupation__c= cds.Occupation__c;
        cd.Income__c= cds.Income__c;
        cd.Address__c = cds.Address__c;
        cd.Agent_ID__c = cds.Agent_ID__c;
        
        insert cd;
        
        pagereference p = new pageReference('/'+cd.id);
        return p;
    
    }
    public PageReference Cancel(){
    
        pageReference g = new pageReference('/apex/IMSVF');
        
        return g;
    }
}