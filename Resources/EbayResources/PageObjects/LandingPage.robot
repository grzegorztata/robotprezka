*** Settings ***
Library  SeleniumLibrary
Variables  ../../../PageObjects/Ebay.py

*** Variables ***

*** Keywords ***
Displaying Advanced Search Page
    element should contain  ${avdSearchLink}  Wyszukiwanie zaawansowane