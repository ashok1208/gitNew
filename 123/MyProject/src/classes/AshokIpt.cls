public with sharing class AshokIpt{
   public List<Opportunity> opplist{set;get;}
    
    public AshokIpt (){
        
        opplist = New List<Opportunity>([Select id, Name, closedate,StageName from Opportunity]);
    }
}