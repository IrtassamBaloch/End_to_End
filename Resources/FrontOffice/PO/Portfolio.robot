*** Settings ***
Library    SeleniumLibrary

*** Variables ***

#Locators
${PORTFOLIO SECTION HEADING} =    Portfolio
${PORTFOLIO PROJECT SELECTION INDEX_NO} =    2
${PORTFOLIO PROJECT SELECTION} =        //*[@id="portfolio"]/div/div[2]/div[${PORTFOLIO PROJECT SELECTION INDEX_NO}]/a
*** Keywords ***
Verify User Is On Section
    page should contain         ${PORTFOLIO SECTION HEADING}

Click on the "Portfolio Project"
    click link            ${PORTFOLIO PROJECT SELECTION}