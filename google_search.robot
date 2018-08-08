*** Settings ***
Library    SeleniumLibrary   

*** Testcases ***
ค้นหา Google ด้วย Keyword ผัดกระเพราหมูกรอบใส่ไข่ดาว
    เปิด Browser สำหรับเข้าเว็บ google.com ด้วย Google Chrome
    ใส่ข้อความในช่องค้นหาด้วยคำว่า    ผัดกระเพราหมูกรอบใส่ไข่ดาว
    กดปุ่มค้นหา
    ปิด Browser

*** Keywords ***
เปิด Browser สำหรับเข้าเว็บ google.com ด้วย Google Chrome
    Open Browser    https://google.com    chrome

ใส่ข้อความในช่องค้นหาด้วยคำว่า
    [Arguments]    ${KEYWORD_FOR_SEARCH_GOOGLE}
    Input Text    class=gsfi    ${KEYWORD_FOR_SEARCH_GOOGLE}

กดปุ่มค้นหา
    Press Key    name=btnK    13
    Click Button    name=btnK

ปิด Browser
    Close Browser
