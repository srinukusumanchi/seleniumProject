*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${url}      https://demo.nopcommerce.com/
${browser}  chrome

*** Test Cases ***
LoginTest
#   If driver is not mentioned in python scripts folder
#    create webdriver    chrome  executable_path="chromedriver.exe"
    Open Browser    ${url}   ${browser}
    Login To Nop Commerce Application
    Close Browser
    
*** Keywords ***
Login To Nop Commerce Application
    Click Element  xpath://a[@class='ico-login']
    Input Text    xpath://input[@id='Email']    ticiso9469@noidem.com
    Input Text    xpath://input[@id='Password']    Srinu1993#
    Click Element   xpath://button[text()='Log in']
    Click Element    xpath://a[@class='ico-logout']