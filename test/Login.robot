*** Settings ***
Resource  ${ROOT}/resources/main.resource
Variables    ${ROOT}/resources/data/mass_of_data/user_data.yaml

Test Setup      Open app
Test Teardown   Close app


*** Test Cases***
Successful Login with Valid entries
    Click on login button on Main Page
    Click on country dropdown
    Search for code    55
    Click on country code    ${country_code_page.br_code_button} 
    Fill phone on phone number field    11969018882
    Fill password on password field    ${USER.PASSWORD}
    Click on button log In on LogIn Page
    Sleep     5
    
    # Wait Until Element Is Visible    accessibility_id=Login
    # Click Element       accessibility_id=Login

    # Wait Until Element is Visible       accessibility_id=Don’t have an account?     20

    # #selecting country and clicking on the login area
    # @{elementlist}    Get Webelements  //*[@class="android.view.View"]
    # Click Element   ${elementlist}[10]

    # #selecting serch input
    # Wait Until Element Is Visible        xpath=//*[@class="android.widget.EditText"]        20
    # Click Element    xpath=//*[@class="android.widget.EditText"]
    # Input Text    xpath=//*[@class="android.widget.EditText"]    55

    # #selecting country BR
    # Click Element   //android.view.View[contains(@content-desc,'Brazil')]

    # #getting list of elements of type input from login screen
    # Wait Until Element is Visible       accessibility_id=Don’t have an account?     20
    # @{element_list_input}  Get Webelements  class=android.widget.EditText

    # #selecting field phone number and entering number
    # Click Element   ${element_list_input}[0]
    # Input Text    ${element_list_input}[0]    11969018882
    
    # #selecting field password and entering it
    # Click Element   ${element_list_input}[1]
    # Input Text    ${element_list_input}[1]    190291

    # #clicking on login button
    # Click Element   accessibility_id=Log in

    # Sleep        10





