*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
TC to demonstrate Browser Window Operation Keywords in Robot FW
    [Documentation]  TC to demonstrate Browser Window Operation Keywords in Robt FW

    open browser    http://google.com   Chrome  alias=ChromeRCV
    open browser    about:blank     ff  alias=RCVFF

    @{alias}    Get Browser Aliases
    Log     ${alias}[0]

    @{browser_ID}   Get Browser Ids
    Log     ${browser_ID}[1]

    sleep   3
    switch browser   1
    click element   //div[contains(text(),'Zgadzam się')]

    sleep   3
    switch browser  ${browser_ID}[1]
    go to   http://ebay.pl

    sleep   3
    close all browsers