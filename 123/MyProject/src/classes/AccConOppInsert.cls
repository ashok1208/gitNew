public class AccConOppInsert {
    public void insertAcc(String name, String industry, String rating, String phone, Decimal rev){
        
        
        Account acc = new Account();

            acc.name = name;
            acc.industry = industry;
            acc.rating = rating;
            acc.phone = phone;
          acc.AnnualRevenue =rev;

        Insert acc;
    System.debug('Account Record Id  '+acc.id);
    }
    
    public void insertCon(String lname, Date dob, String phone){
        
        Contact con = new Contact();
            con.lastname = lname;
            con.birthDate = dob;
            con.phone =phone;

    Insert con;
    System.debug('Contact Record Id  :  '+con.id);
    }
    public void insertOpp(String name, String stage, Date closeDt){
        
        Opportunity opp = new Opportunity();
            opp.name =name;
            opp.stagename = stage;
            opp.CloseDate = closeDt;

        Insert opp;
        System.debug('Opportunity Record Id '+opp.id);
    }
}