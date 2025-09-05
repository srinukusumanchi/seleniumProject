*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}      https://www.techlistic.com/p/selenium-practice-form.html
${browser}  chrome

*** Test Cases ***
Handling Dropdown
    Open Browser    ${url}  ${browser}
    Maximize Browser Window
    Scroll Element Into View    continents
    Select From List By Label    continents     South America
    Select From List By Label    continents     Africa
*** Keywords ***