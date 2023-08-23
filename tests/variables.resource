*** Variables ***
${BROWSER} =                        chrome
${URL} =                            https://google.com
${chrome_options} =                 add_argument(“–headless”); add_argument(“no-sandbox”)
${driver_path} =                    /usr/bin/chromedriver
#SELENOID SETUP
${SELENOID_URL} =                   http://localhost:4444/wd/hub
${BROWSER_NAME} =                   chrome
${BROWSER_VERSION} =                108.0
${PLATFORM} =                       LINUX
${DESIRED_CAPABILITES} =            browserName=chrome        enableVideo=${True}