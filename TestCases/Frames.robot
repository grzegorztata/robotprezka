*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://www.selenium.dev/selenium/docs/api/java/index.html?overview-summary.html

*** Test Cases ***
FramesTest
    open browser    ${url}  ${browser}
    maximize browser window

    packageListFrame
    packageFrame
    classFrame

    close browser

*** Keywords ***
packageListFrame
    select frame    packageListFrame    # id name xpath
    click link    org.openqa.selenium
    unselect frame
    sleep   3

packageFrame
    select frame    packageFrame
    click link  WebDriver
    unselect frame
    sleep   3

classFrame
    select frame    classFrame
    click link      Help
    sleep   3