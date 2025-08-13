*** Settings ***
Documentation    Login Task
Library    Browser

Resource    ./resources/variables.resource
Resource    ./resources/keeywords.resource

Suite Setup    New Browser    ${BROWSER}    ${HEADLESS}
Suite Teardown    Close Browser

*** Task ***
Login to AISingapore
    [Documentation]    Logs in to the AISingapore application.
    Open New Tab ${LOGIN_URL} In Browser
    Login    ${USERNAME}    ${PASSWORD}