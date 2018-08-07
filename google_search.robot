*** Settings ***
Library    SeleniumLibrary

*** Testcases ***
ค้นหา Google ด้วย Keyword ผัดกระเพราหมูกรอบใส่ไข่ดาว
    เปิด Browser สำหรับเข้าเว็บ google.com ด้วย Google Chrome
    ใส่ข้อความในช่องค้นหาด้วยคำว่าผัดกระเพราหมูกรอบใส่ไข่ดาว
    กดปุ่มค้นหา
    ปิด Browser

*** Keywords ***
เปิด Browser สำหรับเข้าเว็บ google.com ด้วย Google Chrome
    Open Browser    https://google.com    chrome

ใส่ข้อความในช่องค้นหาด้วยคำว่าผัดกระเพราหมูกรอบใส่ไข่ดาว
    Input Text    class=gsfi    ผัดกระเพราหมูกรอบใส่ไข่ดาว

กดปุ่มค้นหา
    Click Button    name=btnK

ปิด Browser
    Close Browser
