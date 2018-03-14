public class SuperMarket {

    public class Myproduct{
        public String pname {set;get;}
        public Integer qty  {set;get;}
        public Decimal price{set;get;} 
        
    }
    
    public list<Myproduct> prlist {set;get;}
    
    public SuperMarket(){
    
        prlist = new list<Myproduct>();
        
        prlist.add(new Myproduct());
        prlist.add(new Myproduct());
        prlist.add(new Myproduct());
    
    }
    public void AddMore(){
        prlist.add(new Myproduct());
        prlist.add(new Myproduct());
    
    }
    public pagereference displayPage(){
        pagereference pg = new pagereference('/apex/DisplayVF');
        return pg;
    }

}