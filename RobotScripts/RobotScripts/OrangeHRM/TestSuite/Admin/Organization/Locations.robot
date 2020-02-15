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
    [Tags]  Smoke  Regression  JobTitlePage
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


TestCase2: No.of Employees working in US location
    [Documentation]  This is to perform actions on Locations Page
    [Tags]  Smoke  Regression  LocationPage
    [Setup]
        Navigate to Locations Page of Admin Tab
        sleep  ${timeout}
        ForLoop to get the number of employess working in US
        sleep  ${timeout}
    [Teardown]


TestCase4: Logout from the site
    [Documentation]  This test case will logout from the application
    [Tags]  Smoke  Regression  LocationPage
    [Setup]
        Logout from the website
        sleep  ${timeout}
    [Teardown]

