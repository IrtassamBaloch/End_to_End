*** Settings ***
Library    SeleniumLibrary

*** Variables ***

#Locators
${TOPNAV HOME LINK} =           xpath= //*[@class="navbar-brand page-scroll"]
${TOPNAV SERVIRES LINK} =       xpath=//*[@id="bs-example-navbar-collapse-1"]/ul/li[2]/a
${TOPNAV PORTFOLIO LINK} =      xpath=//*[@id="bs-example-navbar-collapse-1"]/ul/li[3]/a
${TOPNAV ABOUT LINK} =          xpath=//*[@id="bs-example-navbar-collapse-1"]/ul/li[4]/a
${TOPNAV TEAM LINK} =           xpath=//*[@id="bs-example-navbar-collapse-1"]/ul/li[5]/a
${TOPNAV CONTACT LINK} =        xpath=//*[@id="bs-example-navbar-collapse-1"]/ul/li[6]/a


*** Keywords ***
Home Section
    click link    ${TOPNAV HOME LINK}
Servies Section
    click link    ${TOPNAV SERVIRES LINK}
portfolio Section
    click link    ${TOPNAV PORTFOLIO LINK}
About Section
    click link    ${TOPNAV ABOUT LINK}
Team Section
    click link    ${TOPNAV TEAM LINK}
Contact Section
    click link    ${TOPNAV CONTACT LINK}