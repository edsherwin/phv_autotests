*** Settings ***
Documentation     Example test script using Robot Framework Browser with Selenoid
Library           Browser
Library           OperatingSystem

*** Test Cases ***
Open Browser and Navigate
    ${browser} =  Connect To Browser  wsEndpoint=http://localhost:4444/wd/hub  browser=chromium
    Maximize Browser Window
    Go To  https://example.com
    # Capture Page Screenshot  example_screenshot.png
    # [Teardown]  Close Browser  ${browser}

*** Keywords ***
Maximize Browser Window
    Maximize Browser Window

