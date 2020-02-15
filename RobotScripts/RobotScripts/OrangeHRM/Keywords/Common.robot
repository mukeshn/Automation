*** Settings ***
Documentation           OrangeHRM website Common Keywords
Library                 SeleniumLibrary
Library                 BuiltIn
Resource                D:/RobotScripts/RobotScripts/OrangeHRM/Resources/PageObjects/AdminTabLocators/AdminTabLocators.robot
Resource                D:/RobotScripts/RobotScripts/OrangeHRM/Resources/Variable/Variable.robot
*** Keywords ***
Suite Setup
    log to console  Opening browser

Suite Teardown
    log to console  Closing browser

Open OrangeHRM webiste in Chrome
    Open Browser    ${URL}  chrome
    Maximize browser Window
    #Log Browser is maximized
    log to console  Browser is Maximized

Check Login Panel is available
    #${present}=  Run Keyword And Return Status    Element Should Be Visible   ${LoginPanel_Xpath}
    #Run Keyword If    ${present}    Enter Login Credentials
    #log to console  Login Panel is available
     ${count} =  get element count  ${LoginPanel_Xpath}
    Run Keyword And Return If   ${count} > 0  Enter Login Credentials
    log to console  Login Panel is available

Enter Login Credentials
    input text  ${Username_Xpath}  ${Username}
    log to console  Entered Username
    sleep  ${timeout}
    input password  ${Password_Xpath}  ${Password}
    log to console  Entered Password
    sleep  ${timeout}

Click on Login Button
    click button  ${Loginbutton_Xpath}
    log to console  CLicked on Login Button
    sleep  ${timeout}

Verify Mainpage is loaded properly
     ${count} =  get element count  ${Dashboard_Xpath}
    Run Keyword And Return If   ${count} > 0  Validating Mainpage is loaded properly
    set variable if  ${count}

Validating Mainpage is loaded properly
    log to console  Orange HRM Main Page is sucessfully loaded

Logout from the website
    click link  ${Welcome_Xpath}
    log to console  Clicked on Welcome link
    sleep  ${timeout}
    click link  ${Logout_Xpath}
    log to console  Clicked on Logout link
    sleep  ${timeout}
    ${count} =  get element count  ${LoginPanel_Xpath}
    Run Keyword And Return If   ${count} > 0  Close current Browser
    log to console  Login Panel is available
    sleep  ${timeout}

Close current Browser
    close browser
    log to console  Browser is closed


