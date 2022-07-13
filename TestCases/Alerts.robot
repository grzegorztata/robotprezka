*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}      https://testautomationpractice.blogspot.com/

*** Test Cases ***
HandlingAlerts
    open browser    ${url}  ${browser}
    maximize browser window

    displayingAlert

    close browser

*** Keywords ***
displayingAlert
    click element   xpath://button[contains(text(),'Click Me')]
    sleep   3
    # handle alert    accept
    # handle alert    dismiss
    # handle alert    leave
    alert should be present     Press a button!  # also accepts
