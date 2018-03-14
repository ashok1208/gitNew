public class PHctrl {

    public PHctrl(ApexPages.StandardController controller) {

    }
    
    public pageReference addpolicyholder(){
        pagereference pg = new pagereference('/apex/AddPolicyHolderVF');
        return pg;
    }
    public pageReference viewpolicyholder(){
        pagereference pg = new pagereference('https://ap5.salesforce.com/a0U/o');
        return pg;
    }
}