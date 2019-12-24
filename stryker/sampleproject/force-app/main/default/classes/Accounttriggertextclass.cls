@IsTest
public with sharing class Accounttriggertextclass {
    @testSetup
    static void setup() {
        Account acc=new Account();
        acc.name='siva';
        acc.industry='Banking';
        acc.rating='hot';
        insert acc;

       
    }
    @IsTest
    public static void Accounttriggertextclass() {
            Account acclist=[select id,rating,industry,name from account where name='siva' limit 1];
            System.assertEquals('siva', acclist.name);
    }
}
