*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/LoginKeywords.robot

*** Variables ***
${browser}      chrome  # headlesschrome, firefox, headlessfirefox
${url}          https://qa.gatx-cp.unitymsp.it/login
${username}     admin@unity.pl
${password}     secretpass
${loginMess}    Go to R2Q module.

*** Test Cases ***
LoginTest
    Open my Browser     ${url}  ${browser}
    Enter UserName      ${username}
    Enter Password      ${password}
    Click SignIn
    sleep   3
    Verify Succesfull Login     ${loginMess}
    Close my Browsers