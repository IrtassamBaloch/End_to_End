*** Settings ***
Resource            ./PO/Back.home.robot/



*** Variables ***



*** Keywords ***
Visit All Section on the Site Via NavBar
    Load Home Page
#    Move to "Servies" Section
#    Move To "Portfolio" Section
#    Move to "About" Section
#    Move To "Team" Section
#    Move to "Contact" Section

Send Msg to Admin From Contact us Form
     Back.home.Load Web App
#     Home.verify page loaded
#     Move to "Contact" Section
#     Fill The Contact Us Form
#     verify form send

Load Home Page
     Back.home.Load Web App
#     home.verify page loaded
#     home.click on "tell me more"
#     home.scroll the page
#Move To "Portfolio" Section
#     Portfolio.Verify User Is On Section
#Click on Any "Portfolio Project" to view its Descripation
#    Portfolio.Click on the "Portfolio Project"
#    Portfolio-Descriptation.Verify User is on page
#View the Project Site
#    Portfolio-Descriptation.View Portfolio "Site"
#Close the "Portfolo project" page
#   portfolio-descriptation.click on "close product" icon
#Move to "Servies" Section
#    TopNav.Servies Section
#    Servies.Verify User Is On Section
#Move to "About" Section
#    TopNav.About Section
#    ABOUT.VERIFY USER IS ON "SECTION"
#Move To "Team" Section
#    TopNav.Team Section
#    Team.Verify User is on the Section
#Move to "Contact" Section
#    topnav.contact section
#    ContactUs.Verify the User On Section
#Fill The Contact Us Form
#    [Arguments]    ${name}  ${email}    ${phone}    ${message}
#    ContactUs.Fill the Form    ${name}    ${email}    ${phone}    ${message}
#Verify Form Send
#    ContactUs.Verify the form Submit
#