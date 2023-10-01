*** Settings ***
Library    Browser

*** Variables ***
${SELENOID_URL} =                   http://localhost:4444/wd/hub
${BROWSER_NAME} =                   chromium
${BROWSER_VERSION} =                playwright-1.28.1
${PLATFORM} =                       LINUX
${DESIRED_CAPABILITES} =            browserName=chromium        enableVideo=${True}

*** Test Cases ***
Execute Tests in Selenoid Environment
    [Documentation]   Run various tests in Selenoid environment
    ${selenoid_caps}=   Create Dictionary   browserName=${BROWSER_NAME}   version=${BROWSER_VERSION}   platform=${PLATFORM}     enableVideo=${True}     enableVNC=${True}
    Open Browser    remote_url=${SELENOID_URL}   desired_capabilities=${selenoid_caps}


*** Test Cases ***
Open Browser With Capabilities
    ${capabilities}=    Create Dictionary    enableVideo=True    enableVNC=True
    Open Browser    chromium    desired_capabilities=${capabilities}
    Go To    https://example.com
    # Add other test steps here
    Close Browser

Open Browser Test
    New Browser    chromium    headless=False
    # Open Browser    chromium    headless=False
    Go To    https://example.com
    # Add other test steps here
    Close Browser