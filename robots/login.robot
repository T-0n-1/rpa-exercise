*** Settings ***
Documentation    Login Task

Library    Browser
Resource    ../resources/variables.resource
Resource    ../resources/keywords.resource

Suite Setup    New Browser    ${BROWSER}    ${HEADLESS}
Suite Teardown    Close Browser


*** Task ***
Login To AISingapore
    [Documentation]    Logs in to the AISingapore application.
    [Setup]    Open New Tab ${URL} In Browser
    Login To Application       ${USERNAME}             ${PASSWORD}
    [Teardown]              Close Context
