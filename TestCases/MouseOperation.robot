*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}      https://swisnl.github.io/jQuery-contextMenu/demo.html
${url1}     https://testautomationpractice.blogspot.com/
${drag}     id:draggable
${drop}     id:droppable

*** Test Cases ***
MouseActions
    # Right click/open context menu
    open browser    ${url}  ${browser}
    maximize browser window
    # open context menu   xpath://h2    # right mouse click
    open context menu   xpath://span[contains(text(),'right click me')]
    sleep   3

    # Double click action
    go to   ${url1}
    click element   id:cookieChoiceDismiss
    sleep   3
    double click element    //button[contains(text(),'Copy Text')]
    sleep   3

    # Drag and Drop
    drag and drop   ${drag}     ${drop}
    sleep   3

    close browser