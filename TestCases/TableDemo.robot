*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}      https://testautomationpractice.blogspot.com/

*** Test Cases ***
TableValidation
    open browser    ${url}  ${browser}
    maximize browser window

    ${rows}     get element count   xpath://table[@name='BookTable']/tbody/tr
    ${cols}     get element count   xpath://table[@name='BookTable']/tbody/tr/th

    log to console  ${rows} rows
    log to console  ${cols} columns

    ${data}=    get text    xpath://table[@name='BookTable']/tbody/tr[5]/td[1]
    log to console  First cell in fifth row is: ${data}

    close browser

TableValuesVal
    open browser    ${url}  ${browser}
    maximize browser window

    table column should contain     xpath://table[@name='BookTable']    2   Author
    table row should contain        xpath://table[@name='BookTable']    4   Learn JS
    table cell should contain       xpath://table[@name='BookTable']    5   2   Mukesh
    table header should contain     xpath://table[@name='BookTable']    Author
    table header should contain     xpath://table[@name='BookTable']    BookName

    close browser