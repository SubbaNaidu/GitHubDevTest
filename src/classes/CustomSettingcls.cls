public class CustomSettingcls{

     
    
    public CustomSettingcls(){
       CustList__c cc=CustList__c.getValues('Number');
       
     System.debug('Custom Setting Values now'+cc);
    } 
}