public class OverloadDemo {
    public void add(integer a,integer b){
        System.debug('integer , integer');
        this.add(2,5.6);
        this.add(6,9,8);
        this.add(6,8,'ASHOK');
       
        this.add(5,7,'KUMAR',9.0);
    }
    
    public void add(integer a,Decimal b){
        System.debug('integer , Decimal ');
    }
    
    public void add(integer a,integer b, integer c){
        System.debug('integer , integer , integer '); 
    }
    
    public void add(integer a,integer b, String name){
        System.debug('integer , integer , String '); 
    }
    
    public void add(integer a,integer b, String name, Decimal c){
        System.debug('integer , integer , String , Decimal '); 
    }
}