*** Settings ***


*** Test Cases ***
Argument demo keyword test
    Argument demo keyword   rcv     academy

Argument demo keyword test2
    Argument demo keyword   test    testing


*** Keywords ***
Argument demo keyword
    [Arguments]  ${arg1}    ${arg2}
    Log     ${arg1}
    Log     ${arg2}