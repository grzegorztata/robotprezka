*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://www.google.pl
${browser}  chrome
${cookie}   xpath://div[contains(text(),'Zgadzam się')]

*** Test Cases ***
Test Case to demonstrate FOR Loop in Robot Framework
    [Documentation]  Test Case to demonstrate FOR Loop in Robot Framework

    Set Selenium Implicit Wait  5s

    open browser    ${url}  ${browser}
    maximize browser window
    Accept Cookies

    input text  name:q  Unity group
    click element   name:btnK

    @{results_on_page}=     Get WebElements     xpath://*[@id='rso']/div

    sleep   3

    FOR     ${element}  IN  @{results_on_page}
        ${text}=    get text    ${element}
        END

*** Keywords ***
Accept Cookies
    wait until element is visible   ${cookie}
    sleep   1
    click element   ${cookie}
    wait until element is not visible   ${cookie}
    sleep   1