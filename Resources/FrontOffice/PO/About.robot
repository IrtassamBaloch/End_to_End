*** Settings ***
Library    SeleniumLibrary

*** Variables ***

#Locators
${SIGNIN_EMAIL} =               id=email-id

#static variable
${ABOUT_HEADING TITLE} =             About

*** Keywords ***

Verify User is on "Section"
    page should contain             ${ABOUT_HEADING TITLE}
