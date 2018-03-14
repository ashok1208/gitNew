@IsTest
public class HandlerClassTest 
{
    TestMethod Static void Mytest(){
         list<Account> acclist = new list<Account>();
         account acc = new account();
         acc.name = 'Ravi';
         acc.Number_Of_Contacts__c = 3 ;
         acclist.add(acc); 
         HandlerClass.handler(acclist);
         
    
    }

}