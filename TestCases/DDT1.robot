*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/login_resources.robot
Suite Setup  Open My Browser
Suite Teardown  Close Browsers
Test Template  Invalid login

*** Test Cases ***

Right user empty password    admin@yourstore.com     ${EMPTY}
Right user wrong password   admin@yourstore.com     xyz
Wrong user right password   adm@yourstore.com       admin
Wrong user empty password   adm@yourstore.com       ${EMPTY}
Wrong user wrong password   adm@yourstore.com       xyz

*** Keywords ***
Invalid login
    [Arguments]     ${username}    ${password}
    Input Username  ${username}
    Input Password  ${password}
    Click Login Button
    Error message should be visible