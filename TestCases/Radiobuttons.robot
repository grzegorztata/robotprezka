*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://www.tutorialspoint.com/selenium/selenium_automation_practice.htm

*** Test Cases ***
Testing Radio Buttons and Check Boxes
    open browser    ${url}  ${browser}
    maximize browser window

    acceptCookie

    # Selecting Radio Buttons
    select radio button     sex     Female      # By name
    select radio button     exp     5           # By name

    # Selecting Check Box
    select checkbox     Manual Tester
    select checkbox     Automation Tester
    select checkBox     Selenium Webdriver

    # Unselecting Check Box
    unselect checkbox   Manual Tester

    close browser

*** Keywords ***
acceptCookie
    click element  id:banner-accept