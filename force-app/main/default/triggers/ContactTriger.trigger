trigger ContactTriger on Contact (before insert,before update) {
    for(Contact con:Trigger.new){
        if(con.Mailing_Addres_is_Same_As_Other_Addres__c==True){
            con.OtherCountry = con.MailingCountry;
            con.OtherCity = con.MailingCity;
            con.OtherPostalCode = con.MailingPostalCode;
            con.OtherState = con.MailingState;
            con.OtherStreet = con.MailingStreet;
        }
    }
}