*** Settings ***
Library    SeleniumLibrary

*** Testcases ***
Keyword for Search Google By ผัดกระเพราหมูกรอบใส่ไข่ดาว
    Open Browser    https://google.com    chrome
    Input Text    class=gsfi    ผัดกระเพราหมูกรอบใส่ไข่ดาว
    Click Button    name=btnK
