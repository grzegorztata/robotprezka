*** Settings ***


*** Test Cases ***
TC1 User RegistrationTest
    [Tags]  regression
    log to console  This is user registration test
    log to console  User registration test is over

TC2 LoginTest
    [Tags]  sanity
    log to console  This is login test
    log to console  Login test is over

TC3 Change user settings
    [Tags]  regression
    log to console  This is changing user settings test
    log to console  Change user settings test is over

TC4 LogoutTest
    [Tags]  sanity
    log to console  This is logout test
    log to console  Logout test is over

# robot --include=sanity TestCases\Tagging.robot
# robot --include=regression TestCases\Tagging.robot
# robot -i sanity -i regression TestCases\Tagging.robot
# robot -e regression TestCases\Tagging.robot
# robot -e sanity -i regression TestCases\Tagging.robot