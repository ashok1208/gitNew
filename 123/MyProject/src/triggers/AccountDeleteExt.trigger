trigger AccountDeleteExt on Account (before delete) {
    
    for(account acc:trigger.old){
        acc.addError('Sorry you cant Delete this Record' );
        
    }

}