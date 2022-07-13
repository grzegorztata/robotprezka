*** Settings ***
Library  SeleniumLibrary
Resource  ./HeaderPage.robot

*** Variables ***
${search_result}=   Wyniki dla

*** Keywords ***
Verify Search Results
    [Arguments]  ${search_text}
    page should contain     ${search_result} ${search_text}

Select Product Condition


Select Delivery Option