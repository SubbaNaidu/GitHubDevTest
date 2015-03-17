public class AccountCls{

   public boolean pbs{get;set;}
   public boolean pbbl{get;set;}
   public boolean show{get;set;}
   public boolean show1{get;set;}
   public boolean show2{get;set;}
   
   public List<account> li{get;set;}
   
   public AccountCls(){
    show=false;
    show1=false;
    show2=false;
      pbbl=false;
      pbs=true;
     acn=new account();
      li=[select id,name,phone from account];
      
      
   }
   
   public string sname{get;set;}
   public string acnid{get;set;}
   
   public void edit(){
     
      account acc=[select id,name,phone from account where id=:acnid];
      if(acc.name=='subbu'){ 
       acn.name=acc.name;
       acn.phone=acc.phone;
       pbbl=true;
       pbs=false;
       show=false;
       show1=false;
       show2=false;
     }  
     
     else{
      acn.name=acc.name;
       acn.phone=acc.phone;
       acn.id=acc.id;
       pbbl=true;
       pbs=false;
       show=true;
       show1=true;
       show2=true;
     }
    
   }
   
   public account acn{get;set;}
   
   public pagereference save(){
    account acv=new account(id=acn.id);
     acv.name=acn.name;
     acv.phone=acn.phone;
     update acv;
     pagereference pf=new pagereference('/'+acv.id);
     return pf;
    } 
    
     public pagereference savenew(){
    account acv=new account(id=acn.id);
     acv.name=acn.name;
     acv.phone=acn.phone;
     update acv;
     pagereference pf=new pagereference('/001/e');
     pf.setRedirect(true);
     return pf;
    } 
   
   
}