*** Settings ***
Library    SeleniumLibrary

*** Testcases ***
ค้นหา Google ด้วย Keyword ผัดกระเพราหมูกรอบใส่ไข่ดาว
    Open Browser    https://google.com    chrome
    Input Text    class=gsfi    ผัดกระเพราหมูกรอบใส่ไข่ดาว
    Click Button    name=btnK
    Close Browser
