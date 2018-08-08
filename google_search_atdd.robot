*** Settings ***
Library    SeleniumLibrary
Suite Setup    เปิด Browser สำหรับเข้าเว็บ google.com ด้วย Google Chrome
Suite Teardown    ปิด Browser
Test Teardown    กลับไปหน้า google.com
Resource    google_search_resource.robot

*** Testcases ***
ค้นหา Google ด้วย Keyword ผัดกระเพราหมูกรอบใส่ไข่ดาว
    ค้นหา Google ด้วย Keyword    ผัดกระเพราหมูกรอบใส่ไข่ดาว

ค้นหา Google ด้วย Keyword ข้าวไข่เจียวหมูสับ
    ใส่ข้อความในช่องค้นหาด้วยคำว่า    ข้าวไข่เจียวหมูสับ
    กดปุ่มค้นหา
