*** Settings ***
Library    SeleniumLibrary

*** Variables ***

#Locators
${SERVIES SECTION HEADING} =    Service

*** Keywords ***
Verify User Is On Section
    page should contain         ${SERVIES SECTION HEADING}


