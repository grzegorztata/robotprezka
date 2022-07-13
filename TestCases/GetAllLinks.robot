*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}      https://demo.guru99.com/test/newtours/

*** Test Cases ***
GetAllLinkTest
    open browser    ${url}  ${browser}
    maximize browser window

    ${AllLinksCount}=   get element count   xpath://a
    log to console  ${AllLinksCount}

    @{LinkItems}    create list
    FOR     ${i}    IN RANGE    1    ${AllLinksCount}
    ${linkText}=    get text    xpath:(//a)[${i}]
    log to console   ${linkText}
    END