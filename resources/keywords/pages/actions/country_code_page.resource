*** Settings ***
Resource    ${ROOT}/resources/main.resource

*** Keywords ***
Search for code
    [Arguments]    ${country_code}
    Interact to element    ${country_code_page.search_field}    Click Element
    Interact to element    ${country_code_page.search_field}    Input Text    ${EMPTY}    ${country_code}   
   
Click on country code 
    [Arguments]    ${locator}
    Interact to element    ${locator}    Click Element
    