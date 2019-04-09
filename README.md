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


## How to Deploy to Your Org

Simply click the button below and log into your org when requested:

<a href="https://githubsfdeploy.herokuapp.com">
  <img alt="Deploy to Salesforce"
       src="https://raw.githubusercontent.com/afawcett/githubsfdeploy/master/src/main/webapp/resources/img/deploy.png">
</a>