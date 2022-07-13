*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/login_resources.robot
Library     DataDriver  ../TestData/LoginData.csv

Suite Setup  Open My Browser
Suite Teardown  Close Browsers
Test Template  Invalid Login

*** Test Cases ***
LoginTestWithCsv using  ${username}     ${password}

*** Keywords ***
Invalid login
    [Arguments]  ${username}    ${password}
    Input Username  ${username}
    Input Password  ${password}
    Click Login Button
    Error message should be visible
