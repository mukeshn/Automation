*** Settings ***
Documentation  This is the robot script for Orange HRM Site
Library  SeleniumLibrary
Library  BuiltIn
Resource  D:/RobotScripts/RobotScripts/OrangeHRM/Keywords/Common.robot
Resource  D:/RobotScripts/RobotScripts/OrangeHRM/Keywords/OrangeKeywords.robot
#Suite Setup  <keyword name>
#Suite Teardown  <keyword name>
#Test Setup  <keyword name>
#Test Teardown  <keyword name>
Resource     D:/RobotScripts/RobotScripts/OrangeHRM/Resources/Variable/Variable.robot
Library      D:/RobotScripts/RobotScripts/OrangeHRM/Resources/PageObjects/AdminTabLocators/AdminTabLocators.robot

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

TestCase2: Operations performed in Job Tiltle Page
    [Documentation]  This is to perform actions on Job Title Page
    [Tags]  Smoke  Regression  JobTitlePage
    [Setup]
        Navigate to Job Title Page of Admin Tab
        sleep  ${timeout}
        Verify Job Title page is loaded properly
        sleep  ${timeout}
        Add Description to HR Manger
        sleep  ${timeout}
        Add a new Job Title
        sleep  ${timeout}
        Delete the newly created Job Title
        sleep  ${timeout}
    [Teardown]

TestCase3: Logout from the site
    [Documentation]  This test case will logout from the application
    [Tags]  Smoke  Regression  JobTitlePage
    [Setup]
        Logout from the website
        sleep  ${timeout}
    [Teardown]
