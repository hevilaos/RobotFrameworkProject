*** Settings ***
Documentation       File that will contain keywords for basic validations
Library             SeleniumLibrary

*** Variables ***


*** Keywords ***
Press Login Button
    Click Element       //*[@id="login-button"]

Verify that error message is not available 
    [Arguments]     ${message}
    Page Should Not Contain     ${message}

Verify that error message is available
    [Arguments]     ${messsage}
    Element Should Be Visible       //*[@id="login_button_container"]/div/form/div[3]
    Element Should Contain      //*[@id="login_button_container"]/div/form/div[3]       ${messsage}
