*** Settings ***
Resource    ${ROOT}/resources/main.resource

*** Keywords ***
Click on login button on Main Page
    Interact to element    ${main_page.login_button}    Click Element