trigger beforeDelete on Fuel_details__c  (before Delete) {

    if(trigger.isbefore && trigger.isDelete){

        FuelRecordHandler.beforeDeleteInfo(trigger.old);             

    }

}