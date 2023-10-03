*** Settings ***
Resource    ../variables.resource
Resource    ../imports.resource

Suite Setup    Execute Tests in Selenoid Environment
Suite Teardown    Teardown


*** Test Cases ***
Test Case Smoke 001
    [Documentation]    This is a template Test Case
    # Execute Tests in Selenoid Environment
    Go To   https://www.example.com
    Maximize Browser Window
    Title Should Be   Example Domain
    Sleep    10s
    Capture Page Screenshot

Test Case Smoke 002
    [Documentation]    This is a template Test Case
    # Execute Tests in Selenoid Environment
    Go To   https://google.com
    Maximize Browser Window
    Sleep    10s
    Capture Page Screenshot

Test Case Smoke 003
    [Documentation]    This is a template Test Case
    # Execute Tests in Selenoid Environment
    Go To   https://google.com
    Maximize Browser Window
    Sleep    10s
    Capture Page Screenshot

Test Case Smoke 004
    [Documentation]    This is a template Test Case
    # Execute Tests in Selenoid Environment
    Go To   https://google.com
    Maximize Browser Window
    Sleep    10s
    Capture Page Screenshot

Test Case Smoke 005
    [Documentation]    This is a template Test Case
    # Execute Tests in Selenoid Environment
    Go To   https://google.com
    Maximize Browser Window
    Sleep    10s
    Capture Page Screenshot

Test Case Smoke 006
    [Documentation]    This is a template Test Case
    # Execute Tests in Selenoid Environment
    Go To   https://google.com
    Maximize Browser Window
    Sleep    10s
    Capture Page Screenshot

Test Case Smoke 007
    [Documentation]    This is a template Test Case
    # Execute Tests in Selenoid Environment
    Go To   https://google.com
    Maximize Browser Window
    Sleep    10s
    Capture Page Screenshot

Test Case Smoke 008
    [Documentation]    This is a template Test Case
    # Execute Tests in Selenoid Environment
    Go To   https://google.com
    Maximize Browser Window
    Sleep    10s
    Capture Page Screenshot

Test Case Smoke 009
    [Documentation]    This is a template Test Case
    # Execute Tests in Selenoid Environment
    Go To   https://google.com
    Maximize Browser Window
    Sleep    10s
    Capture Page Screenshot

Test Case Smoke 010
    [Documentation]    This is a template Test Case
    # Execute Tests in Selenoid Environment
    Go To   https://google.com
    Maximize Browser Window
    Sleep    10s
    Capture Page Screenshot