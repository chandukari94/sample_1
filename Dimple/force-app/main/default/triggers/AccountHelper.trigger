trigger AccountHelper on Account (before insert) {
    //public static void valdatefild(List<Account> Acc_List){
        for (Account accobj : Trigger.new) {    
            if (accobj.rating!='hot') {
                accobj.industry='Banking';
                accobj.phone='82828282';
            } 
        } 
    }
3
