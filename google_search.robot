*** Settings ***
Library    SeleniumLibrary   
Test Setup    เปิด Browser สำหรับเข้าเว็บ google.com ด้วย Google Chrome
Test Teardown    ปิด Browser

*** Variables ***
${GOOGLE URL}    https://google.com
${WEB BROWSER}    googlechrome

*** Testcases ***
ค้นหา Google ด้วย Keyword ผัดกระเพราหมูกรอบใส่ไข่ดาว
    ใส่ข้อความในช่องค้นหาด้วยคำว่า    ผัดกระเพราหมูกรอบใส่ไข่ดาว
    กดปุ่มค้นหา

ค้นหา Google ด้วย Keyword ข้าวไข่เจียวหมูสับ
    ใส่ข้อความในช่องค้นหาด้วยคำว่า    ข้าวไข่เจียวหมูสับ
    กดปุ่มค้นหา

*** Keywords ***
เปิด Browser สำหรับเข้าเว็บ google.com ด้วย Google Chrome
    Open Browser    ${GOOGLE URL}    ${WEB BROWSER}

ใส่ข้อความในช่องค้นหาด้วยคำว่า
    [Arguments]    ${KEYWORD FOR SEARCH GOOGLE}
    Input Text    class=gsfi    ${KEYWORD FOR SEARCH GOOGLE}

กดปุ่มค้นหา
    Press Key    name=btnK    13
    Click Button    name=btnK

ปิด Browser
    Close Browser
