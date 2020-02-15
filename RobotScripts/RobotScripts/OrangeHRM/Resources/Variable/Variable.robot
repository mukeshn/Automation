__author__ = 'Samson Martin Durai'

*** Settings ***
Documentation  This fill will have the varaibles that we defined in out scripts

*** Variables ***

#Login Page of OrangeHRM
${URL}           https://opensource-demo.orangehrmlive.com/index.php/auth/login
${Username}      Admin
${Password}      admin123
${timeout}       2s

#System User Page
#SearchEmployee
${NameofUser}            Robot6
${UserRole}              ESS
${EmployeeName}          Linda Anderson
${Status}                Enabled
#AddUserPage
${UserPassword}          Change123
${UserConfirmPassword}   Change123

#JobTitle
${JobDescription_EditPage}       This is Job Description
${JobTiltle}                     NewTitle
${Note}                          This is Notes Section

#PayGrade
${NewPG}                NewPG
${NewCurrency}          EUR - Euro
${MinSalary}            70000
${MaxSalary}            120000

#WorkSHift
${ShiftName}            Night
${TimeFrom}             01:00
${TimeTo}               23:00