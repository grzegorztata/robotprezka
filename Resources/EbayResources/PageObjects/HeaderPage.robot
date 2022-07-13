*** Settings ***
Library  SeleniumLibrary
Variables  ../../../PageObjects/Ebay.py

*** Variables ***

*** Keywords ***
Input Search Text and Click Search
    [Arguments]     ${search_text}
    input text      ${homePageSearchTextBox}    ${search_text}
    click element   ${homePageSearchBtn}

Click on Advanced Search Link
    click element   ${HomePageAdvSearchLink}