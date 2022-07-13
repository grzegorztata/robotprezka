*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://www.saucedemo.com/
${browser}  chrome

*** Test Cases ***
Test case to demonstrate IF/ELSE in Robot Framework
    [Documentation]  Test Case to demonstrate IF/ELSE in Robot Framework

    open browser    ${url}  ${browser}
    maximize browser window

    input text  id:user-name    standard_user
    input text  id:password     secret_sauce
    click element   name:login-button

    ${items_on_page}=   Get Element Count   xpath://div[@class='inventory_list']/div

    Run Keyword If  ${items_on_page} == 10  Test Keyword 1
    ...     ELSE IF  ${items_on_page} < 10 and ${items_on_page} > 4  Test Keyword 2
    ...     ELSE   Test Keyword 3
#    Run Keyword If  ${items_on_page} == 6  Test Keyword 1  ELSE IF  ${items_on_page} < 6 and ${items_on_page} > 1  Test Keyword 2  ELSE   Test Keyword 3

*** Keywords ***
Test Keyword 1
    Log To Console  Executed Keyword1 - Found Items as expected
    close browser
Test Keyword 2
    Log To Console  Executed Keyword2 - Found less than expected Items
    close browser
Test Keyword 3
    Log to console  Executed Keyword3 - Exception
    close browser