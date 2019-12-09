trigger AccountHelper on Account (before insert) {
    public static void valdatefild(List<Account> Acc_List){
        for (Account accobj : Acc_List) {
            if (accobj.rating!='hot') {
                accobj.industry='Banking';
            } 
        }
    }