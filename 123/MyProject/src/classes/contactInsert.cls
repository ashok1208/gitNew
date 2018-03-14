public class contactInsert {
    public void addcon(string aname,string ph,string level,string Gender,String Id){
    	contact con = new contact();
        con.LastName = aname;
        con.Phone = ph ;
        con.Level__c = level;
        con.Gender__c = gender;
        con.AccountId = id;
         insert con;
       
    }
}