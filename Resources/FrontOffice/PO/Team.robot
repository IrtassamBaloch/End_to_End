*** Settings ***
Library    SeleniumLibrary

*** Variables ***

#Locators


#static variable
${TEAM_HEADING} =             Our Amazing Team

*** Keywords ***
Verify User is on the Section
    page should contain     ${TEAM_HEADING}
