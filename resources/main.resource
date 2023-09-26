*** Settings ***
#BIBLIOTECAS
Library    AppiumLibrary
Library    OperatingSystem
Library    DateTime
Library    Collections
Library    String


#HOOKS
Resource    ${ROOT}/resources/hooks/app.resource
Resource    ${ROOT}/resources/hooks/basic_actions.resource
Resource    ${ROOT}/resources/hooks/elements.resource

# LOGS AND EVIDENCE
Resource    ${ROOT}/resources/log/console_log.resource
Resource    ${ROOT}/resources/log/evidence.resource

#Page Objecst
Resource    ${ROOT}/resources/keywords/pages/objects/main_page.resource
Resource    ${ROOT}/resources/keywords/pages/objects/login_page.resource
Resource    ${ROOT}/resources/keywords/pages/objects/country_code_page.resource

#Page Actions
Resource    ${ROOT}/resources/keywords/pages/actions/main_page.resource
Resource    ${ROOT}/resources/keywords/pages/actions/login_page.resource
Resource    ${ROOT}/resources/keywords/pages/actions/country_code_page.resource