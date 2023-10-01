*** Settings ***
Library    Process
Library    OperatingSystem

*** Variables ***
${PYTHON_EXECUTABLE}    python3  # Modify if needed
${PYTHON_SCRIPT}         selenoid_test.py
${SELENOID_URL}          http://localhost:4444/wd/hub
${URL_TO_TEST}           https://example.com

*** Keywords ***
Run Test in Selenoid
    [Documentation]    Run a test in Selenoid
    ${command}=    Set Variable    ${PYTHON_EXECUTABLE} ${PYTHON_SCRIPT} ${SELENOID_URL} ${URL_TO_TEST}
    ${output}=    Run Process    ${command}    shell=True    cwd=${CURDIR}
    Log    ${output.stdout}
    Log    ${output.stderr}

*** Test Cases ***
Execute Test in Selenoid
    [Documentation]    Run a test in Selenoid environment
    Run Test in Selenoid
    Sleep    time_=5s
