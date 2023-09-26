*** Settings ***
Resource    ${ROOT}/resources/main.resource

*** Variables ***
${msg_error_dir}    nao foi possivel criar a pasta para salvar a evidencia os teste

*** Keywords ***
Save image from evidence    
    [Arguments]    ${locator}
    ${regex_suite_name}    Set Variable    .+[$.]
    ${regex_elemento}      Set Variable   [^\\[|\\]|\\(|\\)|a-zA-Z0-9|\\s]
    ${suite_name_limpo}    Remove String Using Regexp    ${SUITE NAME}    ${regex_suite_name}
    ${elemento_limpo}      Remove String Using Regexp    ${locator}      ${regex_elemento}
    ${time_evidencia}    Get Current Date    result_format=%Y_%m_%d__%H_%M_%S_%f
    TRY
        Create Directory           ${OUTPUT DIR}/${suite_name_limpo}/${TEST NAME}
        Capture Page Screenshot    ${OUTPUT DIR}/${suite_name_limpo}/${TEST_NAME}/${time_evidencia}_elemento_${elemento_limpo}.png
    EXCEPT     AS     ${system_error}
        Create message error    ${EMPTY}    ${system_error}    ${msg_error_dir}  
    END
     