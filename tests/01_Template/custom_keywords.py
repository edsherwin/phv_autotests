# from selenium import webdriver

# def setup_selenoid_browser(remote_url, browser_type):
#     desired_capabilities = {
#         "browserName": browser_type,
#         # Add other desired capabilities as needed
#     }

#     driver = webdriver.Remote(command_executor=remote_url, desired_capabilities=desired_capabilities)
#     return driver
# from selenium import webdriver

# def setup_selenoid_browser(remote_url, browser_type, browser_version, enable_vnc=True):
#     desired_capabilities = {
#         "browserName": browser_type,
#         "browserVersion": browser_version,
#         "enableVNC": enable_vnc,
#         # Add other desired capabilities as needed
#     }

#     driver = webdriver.Remote(command_executor=remote_url, desired_capabilities=desired_capabilities)
#     return driver

from playwright.sync_api import sync_playwright

def run_test_in_selenoid(url):
    with sync_playwright() as p:
        browser = p.chromium.connect_over_cdp(endpoint="http://localhost:4444/wd/hub")
        page = browser.new_page()
        page.goto(url)
        # Add your test steps here
        page.close()
        browser.close()

if __name__ == "__main__":
    run_test_in_selenoid("https://example.com")


