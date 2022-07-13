*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Search Results
    input text      id:gh-ac    apple iphone 11
    click element   id:gh-btn
    page should contain     Wyniki dla apple iphone 11

Filter results by condition
    click element   xpath://span[contains(text(),'Stan')]
    wait until element is visible   xpath://span[@class='filter-menu-button__checkbox']//following::span[text()='Nowy']
    click element   xpath://span[@class='filter-menu-button__checkbox']//following::span[text()='Nowy']

Verify filter results
    element should contain  xpath://a[@class='remove-filter-link']  Nowy


