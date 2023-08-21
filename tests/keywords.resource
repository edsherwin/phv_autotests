*** Settings ***
Resource    variables.resource
Library    SeleniumLibrary
Library    String
Library    XvfbRobot


*** Keywords ***
Open Browser To Execute Tests
    [Arguments]    ${URL}
    # Start Virtual Display    1920    1080
    # Open Browser    ${URL}    Chrome
    ### OPTION 1 ###
    Open Browser    ${URL}    Chrome    chrome_options=${chrome_options}
    # Run Keyword If    '''${BROWSER}'''=='''chrome'''    Open Chrome Browser In Headless    ${URL}
    # Run Keyword If    '''${BROWSER}'''=='''chrome'''    Start Virtual Display    1920    1080
    # Run Keyword If    '''${BROWSER}'''=='''chrome'''    Open Browser    ${URL}    ${BROWSER}
    # Run Keyword If    '''${BROWSER}'''=='''chrome'''    Open Browser    ${URL}    chrome

Teardown
    Close Browser

Open Chrome Browser In Headless
    [Arguments]    ${URL}
    ${chrome options} =    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${chrome options}    add_argument    headless
    Call Method    ${chrome options}    add_argument    disable-gpu
    Call Method    ${chrome options}    add_argument    no-sandbox
    Call Method    ${chrome options}    add_argument    disable-extensions
    Call Method    ${chrome options}    add_argument    disable-dev-shm-usage
    Create Webdriver    Chrome    chrome_options=${chrome options}
    Go To    ${URL}