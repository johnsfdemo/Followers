# Followers Utilities

This package includes a Lightning component for displaying the current followers of a Salesforce record and an invocable Apex method that sets a user as a follower of a record that can be called from a Process Builder process or Flow Builder flow.


## Followers Lightning Component

Here is how the Lightning component looks on a record page:

![Followers Lightning Component](/images/Followers_Picture.png)

To include the component on a page, simply use Lightning App Builder as shown:

![Lightning App Builder](/images/Followers_Lightning_App_Builder.png)


## CreateFollower

This invocable Apex method can be used from Process Builder or Flow builder to automatically assign a Salesforce user as a follower of a record. Here is an example using Flow Builder:

![Select Apex Action](/images/Create_Follower_Apex_Action.png)
![Input Variables](/images/Input_Variables.png)
![Output Variables](/images/Output_Variables.png)


## How to Deploy This Package to Your Org

I am a pre-sales Solutions Engineer for [Salesforce](https://www.salesforce.com) and I develop solutions for my customers to demonstrate the capabilities of the amazing Salesforce platform. *This package represents functionality that I have used for demonstration purposes  and the content herein is definitely not ready for actual production use; specifically, it has not been tested extensively nor has it been written with security and access controls in mind. By installing this package, you assume all risk for any consequences and agree not to hold me or my company liable.*  If you are OK with that ...

Simply click the button below and log into your org:

<a href="https://githubsfdeploy.herokuapp.com">
  <img alt="Deploy to Salesforce"
       src="https://raw.githubusercontent.com/afawcett/githubsfdeploy/master/src/main/webapp/resources/img/deploy.png">
</a>

## Credits

This component is based on *Lightning Followers*, written by Daniel Wall at [Salesforce](https://www.salesforce.com).