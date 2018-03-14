public class IMSCtlr {

    public PageReference displayAgent(){
        PageReference pg = new PageReference('/apex/AgentVF');
        return pg;
    }
    
    public PageReference AddAgent(){
        PageReference pg = new PageReference('/apex/AddAgentVF');
        return pg;
    }
    
    public PageReference ViewAgent(){
        PageReference pg = new PageReference('https://ap5.salesforce.com/a0T/o');
        return pg;
    }
    
    public PageReference displayPolicyHolder(){
        PageReference pg = new PageReference('/apex/PolicyHolderVF');
        return pg;
    }
    
    public PageReference displayLifeInsurence(){
        PageReference pg = new PageReference('/apex/LifeInsurenceVF');
        return pg;
    }
    
    public PageReference displayMotorInsurence(){
        PageReference pg = new PageReference('/apex/MotorInsurenceVF');
        return pg;
    }
    

    
    



}