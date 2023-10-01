from playwright.sync_api import sync_playwright

# Selenoid URL with port 4444
selenoid_url = 'localhost:4444'  # Remove 'ws://' and '/wd/hub'

# Chromium version to use
chromium_version = 'playwright-1.28.1'

# Base URL to navigate to
base_url = 'https://www.example.com'

# Define a function to open Chromium browser via Selenoid
def open_chromium_browser():
    with sync_playwright() as p:
        browser = p.chromium.connect(
            ws_endpoint=f'ws://{selenoid_url}/playwright/chromium/{chromium_version}',
            timeout=0
        )
        page = browser.new_page()
        page.goto(base_url)
        input("Press Enter to close the browser...")
        browser.close()

if __name__ == '__main__':
    open_chromium_browser()
