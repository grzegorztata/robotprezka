*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}          https://www.saucedemo.com/
${browser}      chrome
${username}     id:user-name
${password}     id:password
${login_btn}    id:login-button
${error_msg}     xpath://h3

*** Test Cases ***
Verify Login Fails - Wrong Username
    open browser    ${url}  ${browser}
    maximize browser window
    input text  ${username}     standard_us
    input text  ${password}     secret_sauce
    click element   ${login_btn}
    sleep   2
    element should contain  ${error_msg}    Epic sadface: Username and password do not match any user in this service
    close browser

Verify Login Fails - LockedOut User
    open browser    ${url}  ${browser}
    maximize browser window
    input text  ${username}     locked_out_user
    input text  ${password}     secret_sauce
    click element   ${login_btn}
    sleep   2
    element should contain  ${error_msg}    Epic sadface: Sorry, this user has been locked out.
    close browser

Verify Login Fails - Wrong Password
    open browser    ${url}  ${browser}
    maximize browser window
    input text  ${username}     standard_user
    input text  ${password}     secret_sa
    click element   ${login_btn}
    sleep   2
    element should contain  ${error_msg}    Epic sadface: Username and password do not match any user in this service
    close browser

Verify Login Fails - Wrong Username and Password
    open browser    ${url}  ${browser}
    maximize browser window
    input text  ${username}     standard_u
    input text  ${password}     secret_s
    click element   ${login_btn}
    sleep   2
    element should contain  ${error_msg}    Epic sadface: Username and password do not match any user in this service
    close browser

Verify Login Fails - Blank Username and Password
    open browser    ${url}  ${browser}
    maximize browser window
    input text  ${username}     ${EMPTY}
    input text  ${password}     ${EMPTY}
    click element   ${login_btn}
    sleep   2
    element should contain  ${error_msg}    Epic sadface: Username is required
    close browser
