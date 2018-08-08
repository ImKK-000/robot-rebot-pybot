*** Settings ***
Suite Setup    เปิด Browser สำหรับเข้าเว็บ google.com ด้วย Google Chrome
Suite Teardown    ปิด Browser
Test Teardown    กลับไปหน้า google.com
Test Template    ค้นหา Google ด้วย Keyword
Resource    google_search_resource.robot

*** Testcases ***
ค้นหากับข้าว    ผัดกระเพราหมูกรอบใส่ไข่ดาว
ค้นหาอาหารจานเดียว    ข้าวไข่เจียวหมูสับ
ค้นหาของหวาน    บัวลอยไข่หวาน
