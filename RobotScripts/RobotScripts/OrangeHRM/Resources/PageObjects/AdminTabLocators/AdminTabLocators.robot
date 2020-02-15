__author__ = 'Samson Martin Durai'

*** Settings ***
Documentation  This file will save the Xpath of all objects
Resource       C:/RobotScripts/OrangeHRM/Resources/Variable/Variable.robot

*** Variables ***
#Login Page
${Username_Xpath}       //input[@type='text'][@name='txtUsername']
${Password_Xpath}       //input[@type='password'][@name='txtPassword']
${Loginbutton_Xpath}    //input[@type='submit'][@name='Submit']
${LoginPanel_Xpath}     //div[text()='LOGIN Panel']

#HomePage
    #Logo
${LogoImage_Xpath}      //img[@alt='OrangeHRM']

    #Dashboard
${Dashboard_Xpath}      //h1[text()='Dashboard']
${AssignLeave_Xpath}    //span[text()='Assign Leave']
${LeaveList_Xpath}      //span[text()='Leave List']
${Timesheets_Xpath}     //span[text()='Timesheets']

    #WelcomeAdmin Link
${Welcome_Xpath}   //a[text()='Welcome Admin']
${About_Xpath}          //a[text()='About']
${Logout_Xpath}         //a[text()='Logout']
${Marketplace_Xpath}    //input[@type='button'][@id='MP_link']

#Main MenuBar
    #Admin Tab
    #Admin Tab -- User Management
${Admin_Xpath}          //b[text()='Admin']
${UserManagement_Xpath}  //a[text()='User Management']
${Users_Xpath}          //a[text()='Users']
    #Admin Tab -- Job
${Job_Xpath}            //a[text()='Job']
${JobTitles_Xpath}      //a[text()='Job Titles']
${PayGrades_Xpath}      //a[text()='Pay Grades']
${EmploymentStauts_Xpath}  //a[text()='Employment Status']
${JobCategories_Xpath}  //a[text()='Job Categories']
${WorkShifts_Xpath}     //a[text()='Work Shifts']
    #Admin Tab -- Organization
${Organization_Xpath}   //a[text()='Organization']
${GeneralInfo_Xpath}    //a[text()='General Information']
${Locations_Xpath}      //a[text()='Locations']
${Structure_Xpath}      //a[text()='Structure']
    #Admin Tab -- Qualifications
${Qualifications_Xpath}  //a[text()='Qualifications']
${Skills_Xpath}         //a[text()='Skills']
${Education_Xpath}      //a[text()='Education']
${Licenses_Xpath}       //a[text()='Licenses']
${Languages_Xpath}      //a[text()='Languages']
${Memberships_Xpath}    //a[text()='Memberships']
    #Admin Tab -- Nationalities
${Nationality_Xpath}    //a[text()='Nationalities']
    #Admin Tab -- Configuration
${Configuration_Xpath}  //a[text()='Configuration']
${EmailConfig_Xpath}    //a[text()='Email Configuration']
${EmailSubs_Xpath}      //a[text()='Email Subscriptions']
${Localization_Xpath}   //a[text()='Localization']
${modules_Xpath}        //a[text()='Modules']
${SocialMedia_Xpath}    //a[text()='Social Media Authentication']
${RegisterAuth_Xpath}   //a[text()='Register OAuth Client']

#System Users Page - Admin Tab(User Management)
${Userrole_Xpath}               //select[@id='searchSystemUser_userType']
${NameofUser_Xpath}             //input[@id='searchSystemUser_userName']
${Employee_Xpath}               //input[@type='text'][@name='searchSystemUser[employeeName][empName]']
${Status_Xpath}                 //select[@name='searchSystemUser[status]']
${Search_Xpath}                 //input[@type='button'][@name='_search']
${Reset_Xpath}                  //input[@type='button'][@name='_reset']
${NoResultsFound_Xpath}         //td[text()='No Records Found']
${ResultTable_Row_Xpath}        //table[@id='resultTable']/tbody/tr
${ResutTable_Column_Xpath}      //table[@id='resultTable']/thead/tr/th
${Addbtn_Xpath}                 //input[@type='button'][@name='btnAdd']
${Deletebtn_XPath}              //input[type=submit][name='btnDelete']
${ResultTable_Xpath}            //table[@id='resultTable']
${RobotCheckBox_Xpath}          //a[text()='Robot6']//parent::td[@class='left']//preceding-sibling::td//input[@name = 'chkSelectRow[]']
${Robot2Link_Xpath}             //a[text()='Robot6']

#AddUser Page
${UserRole_AddUser_Xpath}       //select[@id='systemUser_userType']
${Nameofuser_AddUser_Xpath}     //input[@id='systemUser_userName']
${EmployeeName_AddUser_Xpath}   //input[@name='systemUser[employeeName][empName]']
${Status_AddUser_Xpath}         //select[@name='systemUser[status]']
${Password_AddUser_Xpath}       //input[@id='systemUser_password']
${ConfirmPassword_Xpath}        //input[@type='password'][@name='systemUser[confirmPassword]']
${Savebtn_Xpath}                //input[@type='button'][@name='btnSave']
${CancelBtn_Xpath}              //input[@type='button'][@name='btnCancel']

#EditUser Page
${EditButton_Xpath}             //input[@name='btnSave']

#JobTitle Header
${JobTitleHeader_Xpath}         //h1[text()='Job Titles']
${HRMangerCheckbox_Xpath}       //a[text()='HR Manager']//parent::td[@class='left']//preceding-sibling::td//input[@type='checkbox']
${HRManger_Xpath}               //a[text()='HR Manager']
${AddBtn_Xpath}                 //input[@type='button'][@name='btnAdd']
${Deletebtn_Xpath}              //input[@type='submit'][@name='btnDelete']

#Edit Job Title Page
${EditJobTitleHeader_Xpath}     //h1[text()='Edit Job Title']
${Editbtn_Xpath}                //input[@type='button'][@value='Edit']
${Savebtn_Xpath}                //input[@type='button'][@value='Save']
${Description_Xpath}            //textarea[@name='jobTitle[jobDescription]']
${AddJobTitleHeader_Xpath}      //*[@id="saveHobTitleHeading"]
${JobTitle_Xpath}               //*[@id="jobTitle_jobTitle"]
${Notes_Xpath}                  //textarea[@name='jobTitle[note]']
${CheckboxJobTiltleinTable_Xpath}   //a[text()='${JobTiltle}']//parent::td[@class='left']//preceding-sibling::td//input[@name = 'chkSelectRow[]']

#Pay Grade Home Page
${PayGrade_Xpath}               //h1[text()='Pay Grades']
${PGAddBtn_Xpath}               //input[@type='button'][@name='btnAdd']
${PGDeletebtn_Xpath}            //input[@type='submit'][@name='btnDelete']
${NewPGCheckbox_Xpath}          //a[text()='NewPG']//parent::td[@class='left']//preceding-sibling::td//input[@type='checkbox']

    #Add New Pay Grade Page
${PG_Name_Xpath}                //input[@type='text'][@name='payGrade[name]']
${PG_Savebtn_Xpath}             //input[@type='button'][@name='btnSave']
${PGConfirmationbtn_Xpath}      //input[@type='button'][@id='dialogDeleteBtn']

    #Add New Currency
${EditPGHeader_Xpath}           //h1[text()='Edit Pay Grade']
${AddCurrencybtn_Xpath}         //input[@type='button'][@id='btnAddCurrency']
${AddCurrencyUnit_Xpath}        //input[@type='text'][@name='payGradeCurrency[currencyName]']
${MinSalary_Xpath}              //input[@type='text'][@name='payGradeCurrency[minSalary]']
${MaxSalary_Xpath}              //input[@type='text'][@name='payGradeCurrency[maxSalary]']
${SaveCurrencybtn_Xpath}        //input[@type='button'][@name='btnSaveCurrency']

#Work Shifts Page
${WorkShiftHeader_Xpath}        //h1[text()='Work Shifts']
${AddWorkShiftbtn_Xpath}        //input[@type='button'][@name='btnAdd']
${DeleteShiftbtn_Xpath}         //input[@type='submit'][@name='btnDelete']
${NewShiftCheckbox_Xpath}       //a[text()='${ShiftName}']//parent::td[@class='left']//preceding-sibling::td//input[@type='checkbox']

    #Add Shift Page
${ShiftName_Xpath}              //input[@type='text'][@name='workShift[name]']
${TimeFrom_Xpath}               //select[@name='workShift[workHours][from]']
${TimeTo_Xpath}                 //select[@name='workShift[workHours][to]']
${CandidatesList_Xpath}         //select[@name='workShift[availableEmp][]']
${AddLink_Xpath}                //a[text()='Add >>']
${Remove_Xpath}                 //a[text()='Remove <<']
${Savebtn_Xpath}                //input[@type='button'][@name='btnSave']

#Locations Page
${LocationTable_Xpath}          //table[@id='resultTable']/tbody
${LocationTable_Row_Xpath}      //table[@id='resultTable']/tbody/tr
${LoactionTable_Column_Xpath}   //table[@id='resultTable']/thead/tr/th
${CountryColumn_Xpath}          //table[@id='resultTable']/tbody/tr[i]/td[4]
${Employee_Xpath}