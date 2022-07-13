*** Settings ***
Documentation  Basic Search Functionality
Resource  ../../Resources/EbayResources/EbayCommon.robot
Resource  ../../Resources/EbayResources/EbayKeywords.robot
Resource  ../../Resources/EbayResources/PageObjects/HeaderPage.robot
Resource  ../../Resources/EbayResources/PageObjects/ProductDetailsPage.robot
Resource  ../../Resources/EbayResources/PageObjects/SearchResultsPage.robot

Test Setup  EbayCommon.Start TestCase
Test Teardown  EbayCommon.Finish Test Case

*** Variables ***
${browser}  firefox
${url}      https://www.ebay.pl


*** Test Cases ***
Verify basic search functionalityfor eBay
    [Documentation]  This test case verifies the basic search on Ebay page
    [Tags]  Functional

    EbayKeywords.Verify Search Results
    EbayKeywords.Filter results by condition
    EbayKeywords.Verify filter results

*** Keywords ***




