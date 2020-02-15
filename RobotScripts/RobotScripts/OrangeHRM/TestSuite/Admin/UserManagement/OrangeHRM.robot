*** Settings ***
Documentation  This is the robot script for Orange HRM Site
Library  SeleniumLibrary
Library  BuiltIn
Resource  C:/RobotScripts/OrangeHRM/Keywords/Common.robot
Resource  C:/RobotScripts/OrangeHRM/Keywords/OrangeKeywords.robot
#Suite Setup  <keyword name>
#Suite Teardown  <keyword name>
#Test Setup  <keyword name>
#Test Teardown  <keyword name>
Resource     C:/RobotScripts/OrangeHRM/Resources/Variable/Variable.robot
Library     C:/RobotScripts/OrangeHRM/Resources/PageObjects/Locators.robot

*** Variables ***

*** Test Cases ***
TestCase1: Login with Valid Credentails
    [Documentation]  This is to verify valid login to the Orange HRM site
    [Tags]  Smoke  Regression  Mainpage
    [Setup]
        Open OrangeHRM webiste in Chrome
        sleep  ${timeout}
        Check Login Panel is available
        sleep  ${timeout}
        Click on Login Button
        sleep  ${timeout}
        Verify Mainpage is loaded properly
        sleep  ${timeout}
     [Teardown]

TestCase2: Admin Tab User Opearations
    [Documentation]  This is perform the actions on System Users page
    [Tags]  Regression  AdminTab
    [Setup]
        Navigate to Users page of Admin tab
        sleep  ${timeout}
        Verify System User page is loaded properly
        sleep  ${timeout}
        Search for Employee
        sleep  ${timeout}
        Adding New Users to the system
        sleep  ${timeout}
        Verify the Newly Added User added in the Employee Table
        sleep  ${timeout}
    [Teardown]

TestCase3: Logout from the site
    [Documentation]  This test case will logout from the application
    [Tags]  Smoke  Regression  Mainpage
    [Setup]
        Logout from the website
        sleep  ${timeout}
    [Teardown]