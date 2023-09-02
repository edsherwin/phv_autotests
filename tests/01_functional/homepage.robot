*** Settings ***
Resource    ../variables.resource
Resource    ../imports.resource

# LOCAL
Suite Setup    Open Browser To Execute Tests    ${APP_URL}
# SELENOID ENV
# Suite Setup    Execute Tests in Selenoid Environment
Suite Teardown    Teardown

*** Test Cases ***
Validate Homepage Login Link Shoudl Be Displayed
    [Documentation]    Validate Login Link
    Maximize Browser Window
    Element Should Be Visible    ${LOGIN}
    # Click Element    ${LOGIN}
    Sleep    3s

Validate Search Field
    [Documentation]    Validation of Search functionality and Button
    Click Element    ${SEARCH}
    Element Should Be Visible    ${SEARCH}
    Input Text    ${SEARCH}    Elyu
    Sleep    3s
    # Input Text    test

Validate Use Current Location
    Element Should Be Visible    ${HOME_CURRENT_LOCATION}

Validate Use Coordinates
    Element Should Be Visible    ${HOME_USE_COORDINATES}

Validate Go To Map view
    Element Should Be Visible    ${HOME_MAP_VIEW}