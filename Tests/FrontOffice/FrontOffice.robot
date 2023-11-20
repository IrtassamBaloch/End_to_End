*** Settings ***
Resource        ../../Resources/Common/Common.robot/
Resource        ../../Resources/FrontOffice/FrontOfficeApp.robot
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
    FrontOfficeApp.Visit All Section on the Site Via NavBar
Submit the Data in Contact us
    [Documentation]    Form Submission
    [Tags]          01      Regression
    FrontOfficeApp.send msg to admin from contact us form

#User should be able to land on "Home page"
#    [Documentation]    User is ON Home Page
#    [Tags]             01   smoke   Home
#    RewtApp.Load Home Page
#User should be able to redirect to the "Protfolio" Section
#    [Documentation]    User is ON Portfolio Section
#    [Tags]             02   smoke   portfolio Section
#    RewtApp.Load Home Page
#    RewtApp.Move To "Portfolio" Section
#User should be able to select the any "Project"
#    [Documentation]    User is ON Portfolio Section
#    [Tags]             03   smoke   portfolio Project
#    RewtApp.Load Home Page
#    RewtApp.Move To "Portfolio" Section
#    RewtApp.Click on Any "Portfolio Project" to view its Descripation
#User should be able to "visit the porject site"
#    [Documentation]    User is ON Portfolio Section
#    [Tags]             04   smoke   portfolio Project Site    current
#    RewtApp.Load Home Page
#    RewtApp.Move To "Portfolio" Section
#    RewtApp.Click on Any "Portfolio Project" to view its Descripation
#    RewtApp.View the Project Site
#    RewtApp.Close the "Portfolo project" page
#User should be able to redirect to the "Servies" Section
#    [Documentation]    User is ON Servies Section
#    [Tags]             05   smoke   Servies Section
#    RewtApp.Load Home Page
#    RewtApp.Move To "Servies" Section
#User should be able to redirect to the "About" Section
#    [Documentation]    User is ON About Section
#    [Tags]             06   smoke   About Section
#    RewtApp.Load Home Page
#    RewtApp.Move To "About" Section
#User should be able to redirect to the "Team" Section
#    [Documentation]    User is ON Team Section
#    [Tags]             07   smoke   Team Section
#    RewtApp.Load Home Page
#    RewtApp.Move To "Team" Section
#
#User should be able to redirect to the "Contact" Section
#    [Documentation]    User is ON Contact Section
#    [Tags]             08   smoke   Contact Section
#    RewtApp.Load Home Page
#    RewtApp.Move To "Contact" Section
#User should be able to Send the "Contact Us" form
#    [Documentation]    User is ON Contact Section
#    [Tags]             09   smoke   Contact Section
#    RewtApp.Load Home Page
#    RewtApp.Move To "Contact" Section
#    RewtApp.Fill The Contact Us Form        ${NAME}    ${EMAIL}    ${PHONE}     ${MESSAGE}
#    RewtApp.Verify Form Send