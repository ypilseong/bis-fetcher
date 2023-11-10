from selenium import webdriver

options = webdriver.chrome.options.Options()
options.add_argument("--headless")
options.add_argument("--no-sandbox")
options.add_argument("--disable-dev-shm-usage")  # optional
driver = webdriver.Chrome(options=options)

driver.get("https://www.python.org")
print(driver.title)
