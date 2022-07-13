*** Settings ***
Documentation   Basic Search Functionality
Resource  ../../Resources/EbayResources/EbayCommon.robot
Resource  ../../Resources/EbayResources/PageObjects/HeaderPage.robot
Resource  ../../Resources/EbayResources/PageObjects/SearchResultsPage.robot
Resource  ../../Resources/EbayResources/PageObjects/LandingPage.robot

Test Setup  EbayCommon.Start TestCase
Test Teardown  EbayCommon.Finish Test Case

*** Variables ***

*** Test Cases ***
Verify basic search functionality
    [Documentation]  This test case verifies the basic search
    [Tags]  Functional

    HeaderPage.Input Search Text and Click Search   python
    SearchResultsPage.Verify Search Results     python

#Verify advanced search functionality
#    [Documentation]  This test case verifies the advanced search
#    [Tags]  Functional
#
#    HeaderPage.Click on Advanced Search Link
#    LandingPage.Displaying Advanced Search Page