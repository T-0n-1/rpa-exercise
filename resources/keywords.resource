*** Settings ***
Library    Browser

Resource    variables.resource
Resource    locators.resource

*** Keywords ***
Open New Tab ${url} In Browser
    [Documentation]         Opens a new tab in the browser.
    New Context
    New Page                ${url}


Login
    [Arguments]    ${username}    ${password}
    Input Text    ${USERNAME_FIELD}    ${username}
    Input Text    ${PASSWORD_FIELD}    ${password}
    Click    ${LOGIN_BUTTON}
