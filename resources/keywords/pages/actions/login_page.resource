*** Settings ***
Resource    ${ROOT}/resources/main.resource

*** Variables ***
${position_country_element}    ${4}
${position_phone_number}       ${0}
${position_password}       ${1}

*** Keywords ***
Click on country dropdown
    Interact to element    ${login_page.msg_dont_have_account}
    ${country_dropdown}    Get element or elements from a locator    ${login_page.list_class_to_country}    ${position_country_element}
    Interact to element    ${country_dropdown}    Click Element
    
Fill phone on phone number field
    [Arguments]    ${phone}
    Interact to element    ${login_page.msg_dont_have_account}
    ${phone_number_element}    Get element or elements from a locator    ${login_page.list_editable_fields}    ${position_phone_number}
    Interact to element    ${phone_number_element}    Click Element
    Interact to element    ${phone_number_element}    Input Text    ${EMPTY}    ${phone}

Fill password on password field
    [Arguments]    ${password}
    ${password_element}    Get element or elements from a locator    ${login_page.list_editable_fields}    ${position_password}
    Interact to element    ${password_element}    Click Element
    Interact to element    ${password_element}    Input Text    ${EMPTY}    ${password}

Click on button log In on LogIn Page
    Interact to element    ${login_page.login_button}    Click Element
    
