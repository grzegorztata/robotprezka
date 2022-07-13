*** Settings ***
Library     SeleniumLibrary
Library     SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  http://demowebshop.tricentis.com/register

*** Test Cases ***
RegTest
    open browser    ${url}  ${browser}
    maximize browser window

    set selenium timeout    10
    wait until page contains    Register    # default 5 seconds

    select radio button     Gender  M
    input text  name:FirstName  Grzegorz
    input text  name:LastName   Gretzky
    input text  name:Email      grzegorz.tata@gmail.com
    input text  name:Password   Pimpeksadelko123!
    input text  name:ConfirmPassword    Pimpeksadelko123!

    close browser