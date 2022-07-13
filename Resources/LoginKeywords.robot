*** Settings ***
Library     SeleniumLibrary
Variables   ../PageObjects/Locators.py

*** Keywords ***
Open my Browser
    [Arguments]  ${url}     ${browser}
    open browser    ${url}  ${browser}
    maximize browser window

Enter UserName
    [Arguments]  ${username}
    wait until element is visible   ${txt_loginUserName}
    input text  ${txt_loginUserName}    ${username}

Enter Password
    [Arguments]  ${password}
    input text  ${txt_loginPassword}    ${password}

Click SignIn
    click element    ${btn_signIn}

Verify Succesfull Login
    [Arguments]  ${loginMess}
    element should contain  ${loginVerify}  ${loginMess}

Close my Browsers
    close all browsers