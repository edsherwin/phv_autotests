*** Settings ***
Library    SeleniumLibrary
Library    XvfbRobot
Library    OperatingSystem

*** Variables ***
${BROWSER}    chrome
${URL}    https://google.com
${chrome_options}    add_argument(“–headless”); add_argument(“no-sandbox”)


*** Test Cases ***
Test 001 - Template
    [Documentation]    Test Case Template
    [Setup]    Setup    ${URL}
    Maximize Browser Window
    Sleep    10s
    Capture Page Screenshot
    [Teardown]    Teardown



*** Keywords ***
Setup
    [Arguments]    ${URL}
    # Start Virtual Display    1920    1080
    # Open Browser    ${URL}    Chrome
    Open Browser    ${URL}    chrome    chrome_options=${chrome_options}
    # Run Keyword If    '''${BROWSER}'''=='''chrome'''    Open Chrome In Headless    ${URL}
    # Run Keyword If    '''${BROWSER}'''=='''chrome'''    Start Virtual Display    1920    1080
    # Run Keyword If    '''${BROWSER}'''=='''chrome'''    Open Browser    ${URL}    ${BROWSER}
    # Run Keyword If    '''${BROWSER}'''=='''chrome'''    Open Browser    ${URL}    chrome

Teardown
    Close Browser

Open Chrome In Headless
    [Arguments]    ${URL}
    ${chrome options} =    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${chrome options}    add_argument    headless
    Call Method    ${chrome options}    add_argument    disable-gpu
    Call Method    ${chrome options}    add_argument    no-sandbox
    Call Method    ${chrome options}    add_argument    disable-extensions
    Call Method    ${chrome options}    add_argument    disable-dev-shm-usage
    Create Webdriver    Chrome    chrome_options=${chrome options}
    Go To    ${URL}