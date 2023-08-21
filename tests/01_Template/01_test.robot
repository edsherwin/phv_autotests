*** Settings ***
Resource    ../variables.resource
Resource    ../imports.resource

Suite Setup    Open Browser To Execute Tests    ${URL}
Suite Teardown    Teardown

*** Test Cases ***
Test Case 001
    [Documentation]    This is a template Test Case
    Maximize Browser Window
    Sleep    10s

Test Case 002
    [Documentation]    Test Case 002 - Verify
    Maximize Browser Window
    Sleep    10s
    Capture Page Screenshot