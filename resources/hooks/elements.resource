*** Settings ***
Resource    ${ROOT}/resources/main.resource


*** Keywords ***
Get element or elements from a locator
    [Arguments]    ${locator}    ${element_position}=${EMPTY}
    @{list}    Get Webelements    ${locator}
    IF  "${element_position}"!="${EMPTY}"
        RETURN    ${list}[${element_position}]
    ELSE
        RETURN    @{list}    
    END
