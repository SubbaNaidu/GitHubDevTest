public class Expendcls{
  
   public Expedite_SoldTo__c exp{get;set;}
   
    public Expendcls(){
       exp=new Expedite_SoldTo__c();
      lisacn=new List<account>();
    } 
    
    public List<account> lisacn{get;set;}
    public void craeteaccount(){
       account acn=new account();
        acn.name=exp.Expd_SoldTo__c;
        insert acn;
        lisacn.add(acn);
      exp=new Expedite_SoldTo__c();
    //  pagereference pf=new pagereference('/apex/EndUserPage');
    // pf.setredirect(true);
    //  return pf;
    }
}