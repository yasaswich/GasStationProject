public class FuelRecordHandler {    

    public static void beforeDeleteInfo(list<Fuel_details__c> fuelList){

        //fuelList = [select Id from Fuel_details__c];

        for(Fuel_details__c ful : fuelList){

            if(ful.Fuel_supplied__c > 500){

                ful.addError('you cannot delete the fuel details record because it is associated with supplier and Gas station records');

            }

        }

    }  

    public static void beforeDeleteGas(list<Gas_Station__c> gasList){

        //fuelList = [select Id from Fuel_details__c];

        for(Gas_Station__c gas : gasList){

            if(gas.Fuel_price_liter__c <= 50){

                gas.addError('enter the fuel price before saving the record, Minimum price should be 50');

            }

        }

    } 

}