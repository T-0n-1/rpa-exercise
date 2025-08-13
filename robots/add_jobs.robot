*** Settings ***
Documentation    Login Task

Library    Browser
Resource    ../resources/variables.resource
Resource    ../resources/keywords.resource

Suite Setup    New Browser    ${BROWSER}    ${HEADLESS}
Suite Teardown    Close Browser


*** Tasks ***
Add New Job Postings From CSV
    [Documentation]    Adds new job postings from a CSV file.
    [Setup]                 Task Setup
    Add New Jobs
    [Teardown]              Close Context


*** Keywords ***
Task Setup
    [Documentation]    Short description.
    Open New Tab ${URL} In Browser
    Login To Application    ${USERNAME}             ${PASSWORD}
