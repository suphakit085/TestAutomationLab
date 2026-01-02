*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}     http://localhost:7272/Lab4/Registration.html
${BROWSER}    chrome

*** Keywords ***
Open Registration Page
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

Input Registration Data
    [Arguments]    ${fname}    ${lname}    ${org}    ${email}    ${phone}
    Input Text    id=firstname     ${fname}
    Input Text    id=lastname      ${lname}
    Input Text    id=organization  ${org}
    Input Text    id=email         ${email}
    Input Text    id=phone         ${phone}


Submit Registration
    Click Button    id=registerButton


Alert Should Contain
    [Arguments]    ${expected_message}
    ${alert_text}=    Handle Alert    action=DISMISS
    Should Contain    ${alert_text}    ${expected_message}
