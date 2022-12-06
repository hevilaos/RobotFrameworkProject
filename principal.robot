*** Settings ***
Documentation       File that will contain test cases for automation
Resource            commonResource.robot
Library             SeleniumLibrary
Suite Setup         Open Browser        https://www.saucedemo.com/      Chrome
Suite Teardown      Close Browser

*** Variables ***
${validPassword}        secret_sauce
${invalidPassword}      123456
${validUser}            standard_user
${invalidUser}          hevUser
${initialUrl}           https://www.saucedemo.com/

*** Test Cases ***
TC01_Invalid Login_Empty username
    Input password       //*[@id="password"]       ${validPassword}
    Verify that error message is not available      Username is required
    Press Login Button
    Verify that error message is available   Username is required
    Sleep       3

TC02_Invalid Login_Empty password
    Go to       ${initialUrl}
    Input username      ${validUser}
    Verify that error message is not available   Password is required
    Press Login Button
    Verify that error message is available  Password is required
    Sleep       3

