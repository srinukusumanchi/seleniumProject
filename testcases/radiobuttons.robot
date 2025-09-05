*** Settings ***
Library     SeleniumLibrary
*** Variables ***
${broswer}  chrome
${url}  https://www.techlistic.com/p/selenium-practice-form.html
*** Test Cases ***
Testing Radio Button
    Open Browser    ${url}  ${broswer}
    Maximize Browser Window
    Set Selenium Speed    2
#    radio button name and value
    Select Radio Button     sex     Female
    Select Radio Button    exp     6


# Select Check box
    #Pass either name or id
    Select Checkbox    Manual Tester
    Select Checkbox    Automation Tester

#    Unselect checkbox
    Unselect Checkbox    Manual Tester
    Unselect Checkbox    Automation Tester
*** Keywords ***