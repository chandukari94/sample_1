trigger AccountTrigger on Account (after insert) {
    List<Contact>contacts=new List<Contact>();
    for(Account acc:Trigger.new){
       Contact con=new Contact();
       con.firstname='chandu';
       con.lastName='Kari';
       con.Email='chandukari94@gmail.com';
       con.Accountid=acc.id;
       contacts.add(con);
    }
    insert contacts;
}