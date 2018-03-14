public class AddAgentCtrl{
    public Agent__c cds{get; set;}
        
    public Agent__c setcds(Agent__c op){
        this.cds=op;
        return cds;
    }
    public AddAgentCtrl(ApexPages.StandardController controller) {
        cds=new Agent__c();
    }

    public pagereference SaveandNew(){
        Agent__c cd = new Agent__c();
        cd.name = cds.name;
        cd.Date_of_Birth__c = cds.Date_of_Birth__c ;
        cd.Gender__c = cds.Gender__c;
        cd.Phone__c = cds.Phone__c;
        cd.Email__c = cds.Email__c;
        cd.Reg_Date__c = cds.Reg_Date__c;
        cd.Address__c = cds.Address__c;

        insert cd;
        
        Pagereference pg = new Pagereference('/apex/AddAgentVF');
        pg.setredirect(true);
        return pg;


    }
    public pageReference save(){
        Agent__c cd = new Agent__c();
        cd.name = cds.name;
        cd.Date_of_Birth__c = cds.Date_of_Birth__c ;
        cd.Gender__c = cds.Gender__c;
        cd.Phone__c = cds.Phone__c;
        cd.Email__c = cds.Email__c;
        cd.Reg_Date__c = cds.Reg_Date__c;
        cd.Address__c = cds.Address__c;
        insert cd;
        pagereference p = new pageReference('/'+cd.id);
        return p;
    
    }
    public PageReference Cancel(){
    
        pageReference g = new pageReference('/apex/IMSVF');
        
        return g;
    }
}