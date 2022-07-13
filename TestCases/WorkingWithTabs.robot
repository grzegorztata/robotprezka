*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
TC to demonstrate Tabs Operation in Browsers Window
    [Documentation]  TC to demonstrate Tabs Operation in Browsers Window

    open browser    http://demo.automationtesting.in/Windows.html  chrome  alias=ChromeRCV
    maximize browser window
    sleep   3
    click element   xpath://button[@class='btn btn-info']
    sleep   3

    @{WindowHandles}=   Get Window Handles
    @{WindowIdentifier}=    Get Window Identifiers
    @{WindowNames}=     Get Window Names
    @{WindowTitle}=     Get Window Titles

    set window position     100     150
    sleep   1

    ${x}    ${y}=   Get Window Position
    log     ${x}
    log     ${y}
    sleep   3

    set window size     800     799
    sleep   1

    ${width}    ${height}=  Get Window Size
    log     ${width}
    log     ${height}
    sleep   3

    switch window   ${WindowHandles}[1]
    log     ${WindowHandles}[1]
    sleep   3
    close window
    sleep   3

    switch window   ${WindowHandles}[0]
    close window