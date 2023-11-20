*** Settings ***
Library    SeleniumLibrary
Resource            ./Resources/PO/Portfolio.robot

*** Variables ***

#Locators
${PORTFOLIO-DESCRIPATION HEADING} =         Project Heading
${PORTFOLIO-DESCRIPATION SITE LINK} =       5//*[@id="portfolioModal${PORTFOLIO PROJECT SELECTION INDEX_NO}"]//a[2]
${PORTFOLIO-DESCRIPATION CLOSE BUTTON} =    //*[@id="portfolioModal${PORTFOLIO PROJECT SELECTION INDEX_NO}"]//button
${PORTFOLIO-DESCRIPATION PARA} =            //*[@id="portfolioModal${PORTFOLIO PROJECT SELECTION INDEX_NO}"]/div/div/div[2]/div/div/div
${PORTFOLIO-DESCRIPATION CLOSE ICON} =    //*[@id="portfolioModal${PORTFOLIO PROJECT SELECTION INDEX_NO}"]/div/div/div[1]/div/div
${PORTFOLIO-DESCRIPATION MODAL} =           //*[@id="portfolioModal${PORTFOLIO PROJECT SELECTION INDEX_NO}"]
${portfolio-descripation CLOSE BUTTON TITLE} =   Close Project
*** Keywords ***

Verify User is on page
    wait until page contains                        ${PORTFOLIO-DESCRIPATION HEADING}

View Portfolio "Site"
    #Get WebElement                                 ${PORTFOLIO-DESCRIPATION MODAL}
    execute javascript     document.body.style.zoom = '0.5';  # Change '1.5' to your desired zoom level
    #scroll element into view                        ${PORTFOLIO-DESCRIPATION PARA}
    #Execute JavaScript    window.document.evaluate("${PORTFOLIO-DESCRIPATION PARA}", document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue.scrollIntoView(true);
    Wait Until Element Is Visible                  ${PORTFOLIO-DESCRIPATION PARA}      here

    # Scroll to the element to ensure it's in the viewport
    #Execute JavaScript  window.scrollTo(0, 0);  # Scroll to the top of the page
    Scroll Element Into View                                ${PORTFOLIO-DESCRIPATION SITE LINK}  # Replace with your element locator

    #sleep       10s
    wait until page contains element                        ${PORTFOLIO-DESCRIPATION SITE LINK}
    Click Link                                      ${portfolio-descripation CLOSE BUTTON TITLE}








Click on "Close Product" Icon
     click element                                  ${PORTFOLIO-DESCRIPATION CLOSE ICON}
Click on "Close Product" Button
     page should contain                            ${portfolio-descripation CLOSE BUTTON TITLE}
     click button                                   ${PORTFOLIO-DESCRIPATION CLOSE BUTTON}

