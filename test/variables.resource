*** Variables ***
${BROWSER} =                        chrome
${URL} =                            https://google.com
${chrome_options} =                 add_argument(“–headless”); add_argument(“no-sandbox”)
${driver_path} =                    /usr/bin/chromedriver