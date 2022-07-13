*** Settings ***
Library     SeleniumLibrary
Suite Teardown  Close browser

*** Variables ***
${browser}  chrome
${url}      https://www.sugarcrm.com/au/request-demo/
${accept_cookie}    xpath://button[contains(text(),'Accept All Cookies')]

*** Test Cases ***
Test Case to Selenium Speed and Timeout in robot Framework
    [Documentation]  Test Case to Selenium Speed and Timeout in Robot Framework

    ${default_selenium_timeout}=    Get Selenium Timeout
    ${default_selenium_speed}=      Get Selenium Speed
    Set Selenium Timeout    12s

    open browser    ${url}  ${browser}
    maximize browser window

    Close Cookies

    alert should be present  # w tym przypadku automat poczeka 12 sekund, ponieważ alert nie istnieje

    close browser

*** Keywords ***
Close Cookies
    wait until element is visible   ${accept_cookie}
    sleep   3
    click element   ${accept_cookie}
    wait until element is not visible   ${accept_cookie}