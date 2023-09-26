*** Settings ***
Resource    ${ROOT}/resources/main.resource

*** Keywords ***

Open app
    Open Application    http://localhost:4723/wd/hub
    ...                   automationName=UiAutomator2
    ...                   platformName=Android
    ...                   deviceName=Tea
    ...                   app=${ROOT}\\mobile_testing\\app\\app-uat-release.apk
    ...                   udid=emulator-5554

Close app
    Close Application
