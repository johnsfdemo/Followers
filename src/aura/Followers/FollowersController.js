({
	doInit : function(component, event, helper) {
        var action = component.get("c.getFollowers");
        action.setParams({ recordId : component.get("v.recordId") });
		action.setCallback(this, function(response) {
            if (response.getState() === "SUCCESS")
                component.set('v.users', response.getReturnValue());
        });
        $A.enqueueAction(action);
	}
})