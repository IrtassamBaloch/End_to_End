*** Settings ***
Library    SeleniumLibrary

*** Variables ***

#Locators
${CONTACT_NAME} =                  //*[@id="name"]
${CONTACT_EMAIL} =               //*[@id="email"]
${CONTACT_PHONE} =                  //*[@id="phone"]
${CONTACT_MESSAGE} =                //*[@id="message"]
${CONTACT_SUBMIT_BUTTON} =          //*[@type="submit"]

#static variable
${CONTACT_HEADING_TITLE} =             Contact Us
${CONTACT_SUBMIT_SUCCES_TEXT} =        //*[@id="success"]/div

*** Keywords ***

Verify the User On Section
    page should contain         ${CONTACT_HEADING_TITLE}

Fill the Form
    [Arguments]    ${name}    ${email}    ${phone}     ${message}
    Fill "Name"             ${name}
    Fill "Email"            ${email}
    Fill "Phone"            ${phone}
    Fill "Message"          ${message}
    Click on "Send" Button


Fill "Name"
    [Arguments]         ${name}
    input text          ${CONTACT_NAME}         ${name}
Fill "Email"
    [Arguments]         ${email}
    input text          ${CONTACT_EMAIL}        ${email}
Fill "Phone"
    [Arguments]         ${phone}
    input text          ${CONTACT_PHONE}        ${phone}
Fill "Message"
    [Arguments]         ${message}
    input text          ${CONTACT_MESSAGE}      ${message}

Click on "Send" Button
    click button        ${contact_submit_button}

Verify the form Submit
    wait until page contains element    ${CONTACT_SUBMIT_SUCCES_TEXT}