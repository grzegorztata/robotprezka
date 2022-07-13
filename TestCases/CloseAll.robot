*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  http://demowebshop.tricentis.com/register
${url1}  https://www.tutorialspoint.com/selenium/selenium_automation_practice.htm

*** Test Cases ***
MyTestCase
    open browser    ${url}  ${browser}
    maximize browser window

    open browser    ${url1}  ${browser}
    maximize browser window
    # close browser

    close all browsers