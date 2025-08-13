*** Settings ***
Library    Browser
Library    ../libs/CustomLibrary.py
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
    ${jobs}=    Get Joblist From File      ${CSV_FILE}
    VAR     ${index}    0
    FOR    ${job}    IN    ${jobs}
        Click    ${JOB_TITLE_FIELD}
        Type Text   ${JOB_TITLE_FIELD}    ${job}[${index}][1]
        Click    ${JOB_DESCRIPTION_FIELD}
        Type Text   ${JOB_DESCRIPTION_FIELD}    ${job}[${index}][2]
        ${option}=    Select Options By   ${JOB_DEPARTMENT_FIELD}
        ...    label    
        ...    ${job}[${index}][3]
        ${option}=    Select Options By   ${JOB_EDULEVEL_FIELD}
        ...    label
        ...    ${job}[${index}][4]
        Click    ${JOB_STARTDATE_FIELD}
        Type Text   ${JOB_STARTDATE_FIELD}    ${job}[${index}][5]
        Click    ${JOB_ENDDATE_FIELD}
        Type Text   ${JOB_ENDDATE_FIELD}    ${job}[${index}][6]
        
    END
