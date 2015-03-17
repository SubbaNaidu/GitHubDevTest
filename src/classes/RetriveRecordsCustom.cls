public class RetriveRecordsCustom{

  /*  public RetriveRecordsCustom(ApexPages.StandardSetcontroller sc) {
       
        lst=[Select id, name, phone,fax from Account where phone != null order by name];
         sc.setPageSize(4); 
    } */
  public String check{get;set;} {check='0';} 
  public List<Account> lst{get;set;}
  public RetriveRecordsCustom(){
    lst=[Select id, name, phone,fax from Account where phone != null order by name];
  }
  public string SearchRec{get;set;}
  public void searchRecord(){
    lst=[Select id, name, phone,fax from Account where phone != null and name like:SearchRec+'%'];
   if(lst.size()> 0){
     check='2'; 
    }
    else
    check='1';
     
  }
  
  public void ViewAllRec(){
    lst=[Select id, name, phone,fax from Account where phone != null order by name];
  }
  public String delId{get;set;}
  public pagereference  deleterecord(){
     Account acn=new Account(Id=delId);
     delete acn;
     pagereference ref = new pagereference('/apex/RetriveRecordsCustom');
      ref.setredirect(true);
       return ref;
  }
  public string Alpha{get;set;}
  public void searchbyAlpha(){
    lst=[select id,Name,Phone From Account where Phone!=null and name like:Alpha+'%'];
  }
}