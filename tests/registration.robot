*** Settings ***
Resource    ../resources/resource.robot
Test Teardown    Close Browser

*** Test Cases ***
UAT-Lab04-001 Register Success
    Open Registration Page
    Input Registration Data    Somyod    Sodsai    CS KKU    somyod@kkumail.com    091-001-1234
    Submit Registration
    Title Should Be    Success
    Page Should Contain    Thank you for registering with us.
    Page Should Contain    We will send a confirmation to your email soon.


UAT-Lab04-001-02 Register Success Without Organization
    Open Registration Page
    Input Registration Data    Somyod    Sodsai    ${EMPTY}    somyod@kkumail.com    091-001-1234
    Submit Registration
    Title Should Be    Success


UAT-Lab04-002-01 Empty First Name
    Open Registration Page
    Input Registration Data    ${EMPTY}    Sodsai    CS KKU    somyod@kkumail.com    091-001-1234
    Submit Registration
    Page Should Contain    Please enter your first name!!


UAT-Lab04-002-02 Empty Last Name
    Open Registration Page
    Input Registration Data    Somyod    ${EMPTY}    CS KKU    somyod@kkumail.com    091-001-1234
    Submit Registration
    Page Should Contain    Please enter your last name!!


UAT-Lab04-002-03 Empty Email
    Open Registration Page
    Input Registration Data    Somyod    Sodsai    CS KKU    ${EMPTY}    091-001-1234
    Submit Registration
    Page Should Contain    Please enter your email!!


UAT-Lab04-002-04 Invalid Phone Number
    Open Registration Page
    Input Registration Data    Somyod    Sodsai    CS KKU    somyod@kkumail.com    1234
    Submit Registration
    Page Should Contain    Please enter a valid phone number!!




