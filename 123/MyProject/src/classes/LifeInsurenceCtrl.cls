public class LifeInsurenceCtrl {

    public LifeInsurenceCtrl(ApexPages.StandardController controller) {

    }
    
    public PageReference AddLifeInsurence(){
        PageReference pg = new PageReference('/apex/AddLifeInsurenceVF');
        return pg;
    }
    
    public PageReference ViewLifeInsurence(){
        PageReference pg = new PageReference('https://ap5.salesforce.com/a0V/o');
        return pg;
    }

}