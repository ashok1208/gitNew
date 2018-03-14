public virtual class constructor {
      public constructor(){ 
        this(20);  
        this.show();
        this.show();
        this.show();        
        this.show();
        system.debug('Defult');
        this.show();
        this.show();
        this.show();
    }    
    public constructor(integer i){
        system.debug('integer constructor');
    }    
    public constructor(String str){
        system.debug('String constructor');
    }
    public void show(){  
        system.debug('Return Value');
    }

}