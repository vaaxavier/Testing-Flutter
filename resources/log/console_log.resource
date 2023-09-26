*** Settings ***
Resource    ${ROOT}/resources/main.resource

*** Variables ***
${red}=       Evaluate    "\\033[31m"
${white}=     Evaluate    "\\033[37m"
${msg_element_error}    ELEMENTO NAO ENCONTRADO: 

*** Keywords ***
Create message error
    [Documentation]
    [Arguments]    ${element}    ${msg_console}    ${msg_erro_customized}=${EMPTY}
    Save image from evidence    ${element}
    IF  "${element}"!="${EMPTY}" 
        ${msg_element_error_modified}    Catenate    \n${msg_element_error}${element}
    ELSE
        ${msg_element_error_modified}    Set Variable    ${EMPTY}
    END 
    ${msg_element_error_modified}    Set Variable    
    ${msg_console_modified}    Set Variable    Mensagem de erro apresentada pelo sistema: \n${msg_console}
    Fail       ${red} \n${msg_erro_customized}${msg_element_error_modified}\n${msg_console_modified} \n ${white}