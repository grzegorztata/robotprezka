*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}      http://demo.automationtesting.in/Windows.html

*** Test Cases ***
TabbedWindowTest
    open browser    ${url}  ${browser}
    click element   xpath://button[@class='btn btn-info']
    switch window   title=Selenium      # changed from select_window into switch_window
    sleep   3
    switch window   title=Frames & windows
    sleep   3
    close all browsers