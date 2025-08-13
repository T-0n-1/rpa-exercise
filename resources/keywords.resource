*** Settings ***
Library    Browser
Resource    variables.resource
Resource    locators.resource


*** Keywords ***
Open New Tab ${url} In Browser
    [Documentation]         Opens a new tab in the browser.
    New Context
    New Page                ${url}

Check If ${locator} Is Visible
    [Documentation]    Checks if the element specified by the locator is visible.
    TRY
        Wait For Elements State                         ${locator}              visible                 timeout=2
        VAR                        ${result}=           ${TRUE}
    EXCEPT                         TimeoutError*        type=GLOB
        VAR                        ${result}=           ${FALSE}
    END
    RETURN                  ${result}

Login To Application
    [Documentation]    Login to the application.
    [Arguments]             ${username}             ${password}
    Type Text               ${USERNAME_FIELD}       ${username}
    Type Text               ${PASSWORD_FIELD}       ${password}
    Click                   ${LOGIN_BUTTON}

Add New Jobs
    [Documentation]    Post new jobs.
    Click                   ${ADD_NEW_JOB_BUTTON}

