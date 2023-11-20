*** Settings ***
Documentation    This is my End to end testing
Resource        ../../Resources/Common/Common.robot/
Resource        ../../Resources/BackOffice/BackOfficeApp.robot
Resource        ../../Resources/FrontOffice/FrontOfficeApp.robot
Resource        ../../Data/InputData.robot
Test Setup    Begin Web Test
Test Teardown    End Web Test

*** Variables ***
#${NAME} =           IRTASSAM
#${EMAIL} =          ABC@gmail.com
#${PHONE} =          651113131335
#${MESSAGE} =        I love Coding


*** Test Cases ***
should be Able to Access Both sites
    [Documentation]    this is testing the both app are access able
    [Tags]              01
    FrontOfficeApp.Load Home Page
    backofficeapp.load home page

#Submit the Data in Contact us
#    [Documentation]    Form Submission
#    [Tags]          01      Regression
#    rewtapp.send msg to admin from contact us form