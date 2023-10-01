*** Variables ***
${BROWSER} =                        chrome
${URL} =                            https://google.com
${chrome_options} =                 add_argument(“–headless”); add_argument(“no-sandbox”)
${driver_path} =                    /usr/bin/chromedriver
#SELENOID SETUP
${SELENOID_URL} =                   http://localhost:4444/wd/hub
${BROWSER_NAME} =                   MicrosoftEdge
${BROWSER_VERSION} =                114.0
${PLATFORM} =                       LINUX
${DESIRED_CAPABILITES} =            browserName=chrome        enableVideo=${True}


${APP_URL} =                        https://hazardhunter.georisk.gov.ph
${LOGIN} =                          //a[contains(text(),'Login')]
${SEARCH} =                         //input[@id='home-search-location']
${HOME_CURRENT_LOCATION} =          //a[@id='home-use-current-location']
${HOME_USE_COORDINATES} =           //button[@id='btnUseCoords']
${HOME_MAP_VIEW} =                  //a[contains(text(),'Go to Map View')]