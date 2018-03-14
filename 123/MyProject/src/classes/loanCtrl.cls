public class loanCtrl {

    public loanCtrl(ApexPages.StandardSetController controller) {

    }

    public String lname {set;get;}
    public Decimal lSalary {set;get;}
    public String lacc {set;get;}
    
    loan__c lo;
    
    public pageReference insertloan(){
        lo = new loan__C();
        lo.name = lname;
        lo.Salary__c = lSalary;
        lo.Account_Type__c = lacc;
        
        insert lo;
        
        pageReference p = new pageReference('/'+lo.id);
        return p;
        
    }
    
}