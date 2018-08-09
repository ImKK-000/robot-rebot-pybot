*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${GOOGLE URL}    https://google.com
${WEB BROWSER}    googlechrome

*** Keywords ***
ค้นหา Google ด้วย Keyword
    [Arguments]    ${KEYWORD}
    ใส่ข้อความในช่องค้นหา    ${KEYWORD}
    กดปุ่มค้นหา

เปิด Browser สำหรับเข้าเว็บ google.com ด้วย Google Chrome
    Open Browser    ${GOOGLE URL}    ${WEB BROWSER}
    Wait Until Element Is Visible    id=lst-ib

ใส่ข้อความในช่องค้นหา
    [Arguments]    ${KEYWORD}
    Input Text    id=lst-ib    ${KEYWORD}

กดปุ่มค้นหา
    Press Key    name=btnK    13
    Click Button    name=btnK

กลับไปหน้า google.com
    Go To    ${GOOGLE URL}

ปิด Browser
    Close Browser
