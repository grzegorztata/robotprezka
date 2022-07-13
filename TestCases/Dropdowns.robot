*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://www.tutorialspoint.com/selenium/selenium_automation_practice.htm

*** Test Cases ***
Handling DropDown and Lists
    open browser    ${url}  ${browser}
    maximize browser window

    acceptCookie

    # Dropdown
    select from list by label   continents  Australia
    sleep   3
    select from list by index   continents  1   # starts with 0
    sleep   3

    # Listbox select
    select from list by label   selenium_commands   Switch Commands
    select from list by label   selenium_commands   Browser Commands
    select from list by label   selenium_commands   Wait Commands

    # Listbox unselect
    unselect from list by label     selenium_commands   Switch Commands

    close browser

*** Keywords ***
acceptCookie
    click element  id:banner-accept