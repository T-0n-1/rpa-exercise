*** Settings ***
Library    Browser
Resource    variables.resource
Resource    locators.resource


*** Keywords ***
Open New Tab ${url} In Browser
    [Documentation]         Opens a new tab in the browser.
    New Context
    New Page                ${url}

Login To Application
    [Documentation]    Login to the application.
    [Arguments]             ${username}             ${password}
    Type Text               ${USERNAME_FIELD}       ${username}
    Type Text               ${PASSWORD_FIELD}       ${password}
    Click                   ${LOGIN_BUTTON}
