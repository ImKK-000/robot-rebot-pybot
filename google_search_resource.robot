*** Variables ***
${GOOGLE URL}    https://google.com
${WEB BROWSER}    googlechrome

*** Keywords ***
เปิด Browser สำหรับเข้าเว็บ google.com ด้วย Google Chrome
    Open Browser    ${GOOGLE URL}    ${WEB BROWSER}

ใส่ข้อความในช่องค้นหาด้วยคำว่า
    [Arguments]    ${KEYWORD FOR SEARCH GOOGLE}
    Input Text    class=gsfi    ${KEYWORD FOR SEARCH GOOGLE}

กดปุ่มค้นหา
    Press Key    name=btnK    13
    Click Button    name=btnK

กลับไปหน้า google.com
    Go To    ${GOOGLE URL}

ปิด Browser
    Close Browser
