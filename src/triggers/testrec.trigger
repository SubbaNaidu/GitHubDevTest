trigger testrec on Account (after update) {
    
     account acn=trigger.old[0];
     
     if(acn.name =='subbu'){
       recclsre.call();
       
     }
}