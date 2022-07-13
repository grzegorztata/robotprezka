*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url1}     https://google.com
${url2}     https://youtube.com

*** Test Cases ***
NavigationTest
    open browser    ${url1}     ${browser}
    checkLocation

    go to   ${url2}
    checkLocation

    go back
    checkLocation

    close browser

*** Keywords ***
checkLocation
    ${loc}=     get location
    log to console  ${loc}
    sleep   2