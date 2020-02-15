*** Settings ***
Documentation           OrangeHRM website User defined Keywords
Library                 SeleniumLibrary
Library                 BuiltIn
Resource                C:/RobotScripts/OrangeHRM/Resources/PageObjects/AdminTabLocators/AdminTabLocators.robot
Resource                C:/RobotScripts/OrangeHRM/Resources/Variable/Variable.robot

*** Variables ***


*** Keywords ***
Navigate to Users page of Admin tab
    click element  ${Admin_Xpath}
    log to console  Clicked on Admin in the main menu bar
    sleep  ${timeout}
    click element  ${UserManagement_Xpath}
    log to console  Clicked on Usermanagaement link
    sleep  ${timeout}
    click element  ${Users_Xpath}
    log to console  Clicked on Users link
    sleep  ${timeout}


Verify System User page is loaded properly
    ${count} =  get element count  ${UserName_Xpath}
    Run Keyword And Return If   ${count} > 0  Search for Employee
    log to console  Navigated to System Users page successfully

Search for Employee
    input text  ${NameofUser_Xpath}   ${NameofUser}
    log to console  Entered Username
    sleep  ${timeout}
    select from list by label    ${Userrole_Xpath}     ${UserRole}
    log to console  Selected user role from the dropdown
    sleep  ${timeout}
    input text  ${Employee_Xpath}   ${EmployeeName}
    log to console  Entered Employee Name
    sleep  ${timeout}
    select from list by label  ${Status_Xpath}  ${Status}
    log to console  Selected Status from the dropdown
    sleep  ${timeout}
    click button  ${Search_Xpath}
    log to console  Clicked on Search Button.
    sleep  ${timeout}
     ${count} =  get element count  ${NoResultsFound_Xpath}
    Run Keyword If   ${count}> 0  No Records Found
    ...   ELSE  Run Keywords  RowsandColumns  Dummy

RowsandColumns
    #Getting Row Count and Column count from the table
    ${RCount} =  get element count  ${ResultTable_Row_Xpath}
    log to console  ${RCount} - no. of rows in the table
    ${Cols} =  get element count  ${ResutTable_Column_Xpath}
    log to console   ${Cols} - no. of columns in the table

Dummy
    log to console  Successfully Executed IF-Else Condition

No Records Found
    log to console  No Records were found

Adding New Users to the system
    #Adding New Users to the System
    click button  ${Addbtn_Xpath}
    log to console  Clicked on Add button
    sleep  ${timeout}
    page should contain button  ${Savebtn_Xpath}
    sleep  ${timeout}
    select from list by label   ${UserRole_AddUser_Xpath}   ${UserRole}
    log to console  Selected Role of the user - ${UserRole}
    sleep  ${timeout}
    input text  ${EmployeeName_AddUser_Xpath}  ${EmployeeName}
    log to console  Entered Employee Name - ${EmployeeName}
    sleep  ${timeout}
    input text  ${Nameofuser_AddUser_Xpath}  ${NameofUser}
    log to console  Entered Username - ${NameofUser}
    sleep  ${timeout}
    select from list by label  ${Status_AddUser_Xpath}  ${Status}
    log to console  Selected Satus of the user - ${Status}
    sleep  ${timeout}
    input password  ${Password_AddUser_Xpath}  ${UserPassword}
    log to console  Entered Password
    sleep  ${timeout}
    input password  ${ConfirmPassword_Xpath}  ${UserConfirmPassword}
    log to console  Entered Confrim Password
    sleep  ${timeout}
    click button  ${Savebtn_Xpath}
    log to console  Clicked on Save button
    sleep  ${timeout}
    log to console  Created New User to the system
    sleep  ${timeout}

Verify the Newly Added User added in the Employee Table
    run keyword  Search for Employee
    log to console  Searched for the newly added user in the Employee Table
    sleep  ${timeout}
    table column should contain  ${ResultTable_Xpath}  2  ${NameofUser}
    log to console  Verifying Newly added User is added in the Employee Table
    sleep  ${timeout}
    select checkbox  ${RobotCheckBox_Xpath}
    log to console  Checkbox selected
    sleep  ${timeout}
    CLICK LINK  ${Robot2Link_Xpath}
    log to console  Clicked on ${NameofUser} Link
    sleep  ${timeout}
    page should contain button  ${EditButton_Xpath}
    sleep  ${timeout}

#Admin - Job
Navigate to Job Title Page of Admin Tab
    click element  ${Admin_Xpath}
    log to console  Clicked on Admin in the main menu bar
    sleep  ${timeout}
    click element   ${Job_Xpath}
    log to console  Clicked on Job in the Admin menu bar
    sleep  ${timeout}
    click element   ${JobTitles_Xpath}
    log to console  Clicked on JobTitles in the Admin menu bar
    sleep  ${timeout}

Verify Job Title page is loaded properly
    page should contain element   ${JobTitleHeader_Xpath}
    log to console  Verifying Job title page is loaded properly
    sleep  ${timeout}

Add Description to HR Manger
    select checkbox  ${HRMangerCheckbox_Xpath}
    log to console  Checking Checkbox
    sleep  ${timeout}
    click element  ${HRManger_Xpath}
    log to console  Clicking on HR Manager Link in the table
    sleep  ${timeout}
    page should contain element  ${EditJobTitleHeader_Xpath}
    log to console  Verifying Edit Job Title Page is loaded properly
    sleep  ${timeout}
    click button  ${Editbtn_Xpath}
    log to console  Clicking on Edit Button
    sleep  ${timeout}
    input text  ${Description_Xpath}    ${JobDescription_EditPage}
    log to console  Entering Job Description - ${JobDescription_EditPage}
    sleep  ${timeout}
    click button  ${Savebtn_Xpath}
    log to console  Clicked on Save Button
    sleep  ${timeout}

Add a new Job Title
    run keyword  Navigate to Job Title Page of Admin Tab
    click button  ${AddBtn_Xpath}
    log to console  Clicked on Add button
    sleep  ${timeout}
    page should contain element     ${AddJobTitleHeader_Xpath}
   # page should contain element  ${AddJobTitle_Xpath}
    log to console  Verifying Add Job Title Page is loaded properly
    sleep  ${timeout}
    input text   ${JobTitle_Xpath}    ${JobTiltle}
    log to console  Entered Job Title - ${JobTiltle}
    sleep  ${timeout}
    input text  ${Description_Xpath}   ${JobDescription_EditPage}
    log to console   Entered Description - ${JobDescription_EditPage}
    sleep  ${timeout}
    input text   ${Notes_Xpath}   ${Note}
    log to console   Entered Notes - ${Note}
    sleep  ${timeout}
    click button  ${Savebtn_Xpath}
    log to console  Clicked on Save Button
    sleep  ${timeout}

Delete the newly created Job Title
    run keyword  Navigate to Job Title Page of Admin Tab
    table column should contain  ${ResutTable_Column_Xpath}  2  ${JobTiltle}
    log to console  Verifying Newly added Job Title is added in the Table
    sleep  ${timeout}
    select checkbox  ${CheckboxJobTiltleinTable_Xpath}
    log to console  Selected ${JobTiltle} Checkbox
    sleep  ${timeout}
    click button  ${Deletebtn_Xpath}
    log to console  Clicked on Delete button
    sleep  ${timeout}

#PayGrade Page
Navigate to Pay Grade Page of Admin Tab
    click element  ${Admin_Xpath}
    log to console  Clicked on Admin in the main menu bar
    sleep  ${timeout}
    click element   ${Job_Xpath}
    log to console  Clicked on Job in the Admin menu bar
    sleep  ${timeout}
    click element   ${PayGrades_Xpath}
    log to console  Clicked on  Pay Grades in the Admin Menu bar
    sleep  ${timeout}

Verify Pay Grade page is loaded properly
    page should contain element  ${PayGrade_Xpath}
    log to console  Validating Pay Grade page is loaded properly
    sleep  ${timeout}

Add a new Pay Grade Post
    click element  ${PGAddBtn_Xpath}
    log to console  Clicked on Add button
    sleep  ${timeout}
    input text  ${PG_Name_Xpath}    ${NewPG}
    log to console  Entering ${NewPG} to the Name feild
    sleep  ${timeout}
    click button  ${PG_Savebtn_Xpath}
    log to console  Clicked on Save button
    sleep  ${timeout}

Add Currency to newly added PG
    page should contain element  ${EditPGHeader_Xpath}
    log to console  Validating Edit Pay Grade Header is available
    sleep  ${timeout}
    click button  ${AddCurrencybtn_Xpath}
    log to console  Clicked on Add Currency button
    sleep  ${timeout}
    input text  ${AddCurrencyUnit_Xpath}  ${NewCurrency}
    log to console  Entered New Currency unit- ${NewCurrency}
    sleep  ${timeout}
    input text  ${MinSalary_Xpath}  ${MinSalary}
    log to console  Entered Minimum Salary - ${MinSalary}
    sleep  ${timeout}
    input text  ${MaxSalary_Xpath}  ${MaxSalary}
    log to console  Entered Maximum Salary - ${MaxSalary}
    sleep  ${timeout}
    click button  ${SaveCurrencybtn_Xpath}
    log to console  Clicked on Save button
    sleep  ${timeout}

Delete the newly added Pay Grade Post
    run keyword  Navigate to Pay Grade Page of Admin Tab
    log to console  Navigating to Pay Grade Page
    sleep  ${timeout}
    select checkbox  ${NewPGCheckbox_Xpath}
    log to console  New Pay Grade Checkbox is checked
    sleep  ${timeout}
    click button  ${PGDeletebtn_Xpath}
    log to console  Clicked on Delete button
    sleep  ${timeout}
    click button  ${PGConfirmationbtn_Xpath}
    log to console  Clicked on Confirmation button
    sleep  ${timeout}

#WorkShiftPage
Navigate to WorkShift Page of Admin Tab
    click element  ${Admin_Xpath}
    log to console  Clicked on Admin in the main menu bar
    sleep  ${timeout}
    click element   ${Job_Xpath}
    log to console  Clicked on Job in the Admin menu bar
    sleep  ${timeout}
    click element   ${WorkShifts_Xpath}
    log to console  Clicked on  Work Shifts in the Admin Menu bar
    sleep  ${timeout}

Verify Work Shift page is loaded properly
    page should contain element  ${WorkShiftHeader_Xpath}
    log to console  Validating Work Shift page is loaded properly
    sleep  ${timeout}

Create a New Shift
    click button  ${AddWorkShiftbtn_Xpath}
    log to console  Clicked on Add WorkShift button
    sleep  ${timeout}
    input text  ${ShiftName_Xpath}  ${ShiftName}
    log to console  Entered Shift Name - ${ShiftName}
    sleep  ${timeout}
    select from list by label  ${TimeFrom_Xpath}  ${TimeFrom}
    log to console  Entered Shift Time from - ${TimeFrom}
    sleep  ${timeout}
    select from list by label  ${TimeTo_Xpath}   ${TimeTo}
    log to console  Entered Shift Time To - ${TimeTo}
    sleep  ${timeout}
    select all from list  ${CandidatesList_Xpath}
    log to console  Selected Candidates for the shift
    sleep  ${timeout}
    click link  ${AddLink_Xpath}
    log to console  Clicked on Add link
    sleep  ${timeout}
    click button  ${Savebtn_Xpath}
    log to console  Clicked on Save Button
    sleep  ${timeout}

Delete the Newly added Shit
    select checkbox   ${NewShiftCheckbox_Xpath}
    #//a[text()='${ShiftName}']//parent::td[@class='left']//preceding-sibling::td//input[@type='checkbox']
    log to console  Selected New Shift Checkbox
    sleep  ${timeout}
    click button  ${DeleteShiftbtn_Xpath}
    log to console  Clicked on Save button
    sleep  ${timeout}
    click button  ${PGConfirmationbtn_Xpath}
    log to console  Clicked on Confirmation button
    sleep  ${timeout}

#Locations Page

Navigate to Locations Page of Admin Tab
    click element  ${Admin_Xpath}
    log to console  Clicked on Admin in the main menu bar
    sleep  ${timeout}
    click element   ${Organization_Xpath}
    log to console  Clicked on Oraganization Link in the Admin menu bar
    sleep  ${timeout}
    click element   ${Locations_Xpath}
    log to console  Clicked on  Locations link in the Admin Menu bar
    sleep  ${timeout}

ForLoop to get the number of employess working in US
    ${RowCount} =  get element count  ${LocationTable_Row_Xpath}
    log to console  ${RowCount} - no. of rows in the table
    ${CCount} =  get element count  ${LoactionTable_Column_Xpath}
    log to console   ${CCount} - no. of columns in the table
    ${RCount} =  Evaluate  ${RowCount} + 1
    log to console  ${RCount}
    ${Total}  set variable  0
    log to console  ${Total}
    :FOR   ${i}   IN RANGE   1  ${RCount}
    \       ${CountryName} =  get text   //table[@id='resultTable']/tbody/tr[${i}]/td[4]
    \       log to console   Captured ${CountryName}
    \       run keyword if   '${CountryName}' == 'United States'   Success
    \                    sleep  ${timeout}
    \                    ${Emp} =  get text  //table[@id='resultTable']/tbody/tr[${i}]/td[6]
    \                    log to console  Captured No. of Employees ${Emp}
    \                    log to console  Current Total- ${Total}
    \                    ${Total1} =  Evaluate  ${Emp}+${Total}
    \                    log to console  Total No. of people working in US are ${Total1}
    ...  ELSE  No Records Found
    #log to console  Loop Exited

Success
    log  Pass
