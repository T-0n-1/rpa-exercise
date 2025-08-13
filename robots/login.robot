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
    Open New Tab ${URL} In Browser
    Login                   ${USERNAME}             ${PASSWORD}
