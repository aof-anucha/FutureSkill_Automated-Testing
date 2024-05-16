*** Settings ***
Library         SeleniumLibrary
Resource        CommonKeywords.robot

*** Keywords ***
user click register button
    CommonKeywords.wait until element is ready then click element    //button[text()="สมัครสมาชิก"]    