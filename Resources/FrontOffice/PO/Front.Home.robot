*** Settings ***
Library    SeleniumLibrary

*** Variables ***

#Locators
${HOME TMM BUTTON LINK} =           xpath=//*[@id="page-top"]/header/div/div/a
#static variable
${HOME INTRO HEADING} =             It's Nice To Meet You

*** Keywords ***
Load Web App
    go to    ${Front_START URL}

Verify Page Loaded
    page should contain    ${HOME INTRO HEADING}

click on "Tell Me MORE"
    click link             ${HOME TMM BUTTON LINK}

Scroll the page
    scroll element into view        xpath=//*[@id="bs-example-navbar-collapse-1"]/ul/li[4]/a