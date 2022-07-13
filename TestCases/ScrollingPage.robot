*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}      https://www.countries-ofthe-world.com/flags-of-the-world.html

*** Test Cases ***
ScrollingTest
    open browser    ${url}  ${browser}
    maximize browser window
    sleep   2
    execute javascript  window.scrollTo(0,500)
    sleep   2
    scroll element into view    xpath://td[contains(text(),'Finland')]
    sleep   2
    execute javascript  window.scrollTo(0,document.body.scrollHeight)   # end point
    sleep   2
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)  # starting point
    sleep   2

    close browser
