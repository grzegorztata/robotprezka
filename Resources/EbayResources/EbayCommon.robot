*** Settings ***
Library  SeleniumLibrary

*** Variables ***
&{url}  pl=https://www.ebay.pl/     uk=https://www.ebay.co.uk/  com=https://www.ebay.com/
${browser}  firefox

*** Keywords ***
Start TestCase
    open browser    ${url.pl}    ${browser}
    maximize browser window
    Close Cookies

Close Cookies
    wait until element is visible   xpath://button[@id='gdpr-banner-accept']
    sleep   1
    click element   xpath://*[text()="Zaakceptuj wszystkie"]

Finish Test Case
    sleep   1
    close browser