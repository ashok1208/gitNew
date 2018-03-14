public class MotorInsurenceCtrl {

    public MotorInsurenceCtrl(ApexPages.StandardController controller) {

    }
    
    public pageReference AddMotorInsurence(){
    
        pagereference pg = new pageReference('/apex/AddMotorInsurenceVF');
        return pg;
    
    }
    
    public pageReference ViewMotorInsurence(){
    
        pagereference pg = new pageReference('https://ap5.salesforce.com/a0W/o');
        return pg;
    
    }

}