*** Settings ***
Resource        ../../Resources/Common/Common.robot/
Resource        ../../Resources/BackOffice/BackOfficeApp.robot
Resource        ../../Data/InputData.robot


Test Setup    Begin Web Test
Test Teardown    End Web Test

*** Variables ***


${NAME} =           IRTASSAM
${EMAIL} =          ABC@gmail.com
${PHONE} =          651113131335
${MESSAGE} =        I love Coding


*** Test Cases ***
Visit All Section on the Site Via NavBar
    [Documentation]    Visit the Site
    [Tags]              00 Regresstion
    backofficeapp.load home page

#Submit the Data in Contact us
#    [Documentation]    Form Submission
#    [Tags]          01      Regression
#    rewtapp.send msg to admin from contact us form