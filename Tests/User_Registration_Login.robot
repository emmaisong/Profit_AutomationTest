*** Settings ***
Documentation  Smoke testing to validate the usage of robot framework as automation platform
...            test environment http://automationpractice.com/index.php
Resource       ../Resources/Loga_Automation.robot
Suite Setup    set log level  DEBUG
Test Setup     set selenium speed  0.01
Suite Teardown   Close All Browsers

*** Test Cases ***
New User Registers and activates Account
   [Tags]     Registration
   Given User on Application Homepage
   When New User Account is created
   And validate successful account creation
   Then new user can sign in

Existing user signs in with valid account credentials
  [Tags]     Sign in
  Given Enter valid username
  And Enter valid password
  When I click on the sign in button
  Then Assert successfull login

