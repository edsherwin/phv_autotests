*** Settings ***
Resource    ../../variables.resource
Resource    ../../imports.resource
Suite Setup    Execute Tests in Selenoid Environment
Suite Teardown    Teardown


*** Test Cases ***
Test Case 001 - Test Execution in Selenoid
    [Documentation]    This is a template Test Case
    # Execute Tests in Selenoid Environment
    Go To   https://www.example.com
    Maximize Browser Window
    Title Should Be   Example Domain
    Sleep    10s
    Capture Page Screenshot

Test Case 002 - Test Execution in Selenoid
    [Documentation]    This is a template Test Case
    # Execute Tests in Selenoid Environment
    Go To   https://google.com
    Maximize Browser Window
    Sleep    10s
    Capture Page Screenshot

