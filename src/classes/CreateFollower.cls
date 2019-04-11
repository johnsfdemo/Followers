//  Flow component to assign a follower to a record.
//  
//  The code checks to make sure that only one record is entered at a time.  To provide updates to multiple
//  cases, place this component inside a loop in flow builder.
//  
//  Returns a status string of either 'SUCCESS' or 'FAILURE'.  In case of FAILURE, a more detailed message
//  detailing the reason for failure is provided.
//
//  This code is provided AS IS, with no warranty or guarantee of suitability for use.
//  Contact: john.meyer@salesforce.com


global without sharing class CreateFollower {
    
    private static final String SUCCESS = 'SUCCESS';
    private static final String FAILURE = 'FAILURE';
    
    global class Requests {
        @InvocableVariable
        global Id recordId;                 // The ID of the record to follow
        
        @InvocableVariable
        global Id follower;                 // The user ID of the follower
    }
    
    global class Results {
        @InvocableVariable
        global String status;               // Either 'SUCCESS' or 'FAILURE'
        
        @InvocableVariable
        global String message;              // In the case of FAILURE, a more detailed message
    }    
    
    @InvocableMethod(label='Create a Follower' description='Adds a user to a record\'s list of followers')
    
    public static List<Results> createFollower (List<Requests> records) {
        
        List<Results> resultList = new List<Results>();
        Results result = new Results();
        
        if (records.size() != 1) {
            result.status = FAILURE;
            result.message = 'You must supply exactly one record to use this action.';
            System.debug(result.message);
        } else            
            try {
                EntitySubscription subscription = new EntitySubScription(ParentId = records[0].recordId, SubscriberId = records[0].follower);
                insert subscription;
                result.status = SUCCESS;
            } catch (DMLException e) {
                result.status = FAILURE;
                result.message = 'Could not create subsciption for user Id = "' + records[0].follower + '" on record Id = "' + records[0].recordId + '"';
                System.debug(result.message);
            }
        
        resultList.add(result);
        return resultList;
    }
}