*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url1}     https://google.com
${url2}     https://youtube.com

*** Test Cases ***
MultipleBrowsersTest
    open browser    ${url1}     ${browser}
    maximize browser window
    click element   xpath://div[contains(text(),'Zgadzam się')]
    sleep   3

    open browser    ${url2}     ${browser}
    maximize browser window
    click element   xpath://yt-formatted-string[contains(text(),'Zgadzam się')]
    sleep   3

    switch browser  1
    ${title1}=  get title
    log to console  ${title1}

    switch browser  2
    ${title2}=  get title
    log to console  ${title2}

    close all browsers