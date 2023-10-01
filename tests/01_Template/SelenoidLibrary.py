# Import the Robot Framework Browser library
from robot.libraries.Browser import Browser

if __name__ == "__main__":
    # Initialize the browser instance with the Selenoid URL
    browser = Browser('http://your-selenoid-server-url:4444/wd/hub', alias='SelenoidBrowser')

    # Perform browser automation using the Browser library
    browser.open_browser('https://example.com', 'chrome')  # Change to 'firefox' if needed
    browser.maximize_browser_window()
    browser.go_to('https://example.com')
    title = browser.get_title()
    print(f"Page title: {title}")
    browser.capture_page_screenshot('example_screenshot.png')
    browser.close_browser()
