*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://demo.nopcommerce.com/
${browser}    chrome

*** Test Cases ***
Login_Test
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Get Title
    Click Link    xpath://a[contains(text(),'Log in')]
    Input Text    xpath://input[@id='Email']    skksathish258@gmail.com
    Input Text    xpath://input[@id='Password']    Sathish@92
    Sleep    5
    Click Element    xpath://button[contains(text(),'Log in')]
    Sleep    5
    Mouse Over    xpath://body/div[6]/div[2]/ul[1]/li[1]/a[1]
    Mouse Down    xpath://body/div[6]/div[2]/ul[1]/li[1]/ul[1]/li[1]/a[1]
    Click Element    xpath://body/div[6]/div[2]/ul[1]/li[1]/ul[1]/li[1]/a[1]
    Scroll Element Into View    xpath://body/div[6]/div[3]/div[1]/div[3]/div[1]/div[2]/div[2]/div[2]/div[1]/div[1]/div[1]/div[1]/div[2]/div[3]/div[2]/button[1]
    Click Element    xpath://body/div[6]/div[3]/div[1]/div[3]/div[1]/div[2]/div[2]/div[2]/div[1]/div[1]/div[1]/div[1]/div[2]/div[3]/div[2]/button[1]
    
    Sleep    5
    Click Link    xpath://a[contains(text(),'Log out')]
    Sleep    5

*** Keywords ***