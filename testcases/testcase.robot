*** Settings ***
Library         SeleniumLibrary
Resource        ../keywords/HomePageKeywords.robot
Resource        ../keywords/RegisterPageKeywords.robot
Variables       ../resources/testdata/testdata.yaml
Variables       ../resources/config/config.yaml
Suite Setup        Open Browser    ${baseUrl}    chrome    options=add_experimental_option("detach", True)
Suite Teardown     Close Browser


*** Test Cases ***
As a user, I want to register
    When user click register button
    Then user input information in register page    ${email}    ${firstname}    ${lastname}    ${phoneNumber}    ${newPassword}    ${confirmPassword}
    Then future skill should display message as "ระบบได้ส่งรหัส OTP ไปยังเบอร์โทรศัพท์"      