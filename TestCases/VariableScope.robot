# Variable scopes

# Global scope
# Global variables are available everywhere in the test data

# Test suite scope
# Variables with the test suite scope are available anywhere in the test suite
# where they are definied or imported.

# Test case scope
# Variables with the test case scope are visible in a
# test case and in all user keywords the test uses.

# Local scope
# Test cases and user kaywords have a variable scope
# that is not seen by other tests or keywords

*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${VARIABLE_DEMO} =  This is GLOBAL variable

*** Test Cases ***
This is demo test 1
    ${variable_tc} =    Set Variable   This is TestCase variable
    Log     ${VARIABLE_DEMO}
    Log     ${variable_tc}

This is demo test 2
    Log     ${VARIABLE_DEMO}

This is demo test 3
    This is demo keyword

*** Keywords ***
This is demo keyword
    [Arguments]  ${VARIABLE_DEMO}=This is KEYWORD variable
    log     ${VARIABLE_DEMO}