*** Settings ***
Resource    ${ROOT}/resources/main.resource

*** Variables ***
${msg_keyword_error}    run keyword failed to try execute
${msg_element_fail}    locator doesnt work in search on app page

*** Keywords ***
Interact to element
    [Arguments]    ${locator}   ${keyword_action}=${EMPTY}    ${msg_error_customized}=${EMPTY}    @{args}
    TRY
        Wait Until Element Is Visible    ${locator}
        Execute action    ${keyword_action}    ${locator}    ${msg_error_customized}     @{args}
        ${status_variable_type}    Evaluate    isinstance($locator, str)    
        IF    ${status_variable_type}==${False}
            ${locator}    Set Variable    ${EMPTY}
        END   
        Save image from evidence    ${locator}
    EXCEPT    AS    ${system_error}
        Create message error    ${locator}    ${system_error}    ${msg_element_fail}
    END


Execute action
    [Arguments]    ${keyword_action}    ${locator}    ${msg_customized}    @{args}    
    TRY
        IF  "${keyword_action}"!="${EMPTY}"  
            Run Keyword    ${keyword_action}    ${locator}    @{args}
        ELSE
            RETURN
        END
    EXCEPT    AS     ${system_error}
        IF  "${msg_customized}"!="${EMPTY}"
            Create message error    ${locator}    ${system_error}    ${msg_customized}
        ELSE
            Create message error    ${locator}    ${system_error}    ${msg_keyword_error}
        END        
    END

