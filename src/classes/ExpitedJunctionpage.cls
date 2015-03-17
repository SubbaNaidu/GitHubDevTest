public class ExpitedJunctionpage{

    public String selop{get;set;}
    public List<selectoption> lisopn{get;set;}
    public ExpitedJunctionpage(){
       List<Expedite_SoldTo__c>  liso=[select id,OPName__c from Expedite_SoldTo__c where OPName__c!=''];
        lisopn=new List<selectoption>();
        
        for(Expedite_SoldTo__c ss:liso){
           lisopn.add(new selectoption(ss.id,ss.OPName__c )); 
        }
         
    }
    
    public List<TestObject__c> lit{get;set;}
    public void showdates(){
        lit=[select id,startdate__c,End_Date__c ,DeleteObject1__r.Labor_Catogiries__c from TestObject__c where Expedite_SoldTo__c=:selop and DeleteObject1__r.Labor_Catogiries__c!=''];
    }
}