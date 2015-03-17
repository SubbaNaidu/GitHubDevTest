public class oppreldisplaycls{ 
   Public List<Labor_Category_c__c> Lstlc {get;set;}
   Public List<Week__c> Lit{get;set;}
   Public String OppId{get;set;}
    
    public oppreldisplaycls(ApexPages.StandardController stdCtrl){
    
    OppId = Apexpages.currentpage().getparameters().get('Id');
    Lit = new List<Week__c>();
    Lit = [SELECT Id,Name,Labor_Category__c,Start_Date__c,End_Date__c  FROM Week__c WHERE Opportunity__c =:OppId];
    
    Lstlc = new List<Labor_Category_c__c>();
           
   // Lstlc [ SELECT Id,Name FROM Labor_Category_c__c WHERE OppId   ];
     
              
    }
    
}