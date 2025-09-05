*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}      https://demo.nopcommerce.com/
${browser}  chrome

*** Test Cases ***
Testing Input Box
    Open Browser    ${url}  ${browser}
    Maximize Browser Window
    Title Should Be    nopCommerce demo store. Home page title
    Click Link    xpath://a[@class='ico-login']
#    Visibility
    ${"email"}  Set Variable    id:Email
    Element Should Be Visible    ${"email"}
#    Enabled or not
    Element Should Be Enabled   ${"email"}
#    Provide value
    Input Text    xpath://input[@id='Email']    ticiso9469@noidem.com
    Sleep    5
#    clearing value
    Clear Element Text    ${"email"}
    Sleep    3
*** Keywords ***