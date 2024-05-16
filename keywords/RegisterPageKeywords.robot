*** Settings ***
Library         SeleniumLibrary
Resource        CommonKeywords.robot

*** Keywords ***
user input information in register page
    [Arguments]    ${email}    ${firstname}    ${lastname}    ${phoneNumber}    ${newPassword}    ${confirmPassword}      
    CommonKeywords.Wait until element is ready then input text        name=email            ${email}
    CommonKeywords.Wait until element is ready then input text        name=firstName            ${firstname}
    CommonKeywords.Wait until element is ready then input text        name=lastName           ${lastname}
    CommonKeywords.Wait until element is ready then input text        name=phoneNumber            ${phoneNumber}
    CommonKeywords.Wait until element is ready then input text        name=newPassword            ${newPassword}
    CommonKeywords.Wait until element is ready then input text        name=confirmPassword            ${confirmPassword}
    CommonKeywords.Wait until element is ready then click element     name=consent
    CommonKeywords.Wait until element is ready then click element     //button[text()="สมัครสมาชิก"]

future skill should display message as "${expected_message}"
    CommonKeywords.Wait until page contains element then verify text        ${expected_message}
