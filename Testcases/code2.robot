*** Settings ***
# Library    SeleniumLibrary
Library    RPA.Browser.Selenium    auto_close=${False}

*** Variables ***
${url}    https://opensource-demo.orangehrmlive.com/
${browser}    chrome

*** Test Cases ***
Login_Test
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    ${title}    Get Title
    Log To Console    ${title}
    Login_to_application

*** Keywords ***
Login_to_application
    Sleep    5
    ${userbox}    Set Variable    xpath://body/div[@id='app']/div[1]/div[1]/div[1]/div[1]/div[2]/div[2]/form[1]/div[1]/div[1]/div[2]/input[1]
    Element Should Be Enabled    ${userbox}
    Element Should Be Visible    ${userbox}
    Input Text    ${userbox}    Admin
    Sleep    5
    # Clear Element Text    ${userbox}
    Press Keys    ${userbox}    CTRL+A+DELETE
    Sleep    5
    # Input Text    xpath://body/div[@id='app']/div[1]/div[1]/div[1]/div[1]/div[2]/div[2]/form[1]/div[1]/div[1]/div[2]/input[1]    Admin
    Input Password    xpath://body/div[@id='app']/div[1]/div[1]/div[1]/div[1]/div[2]/div[2]/form[1]/div[2]/div[1]/div[2]/input[1]    admin123
    Sleep    5
    Click Element    xpath://body/div[@id='app']/div[1]/div[1]/div[1]/div[1]/div[2]/div[2]/form[1]/div[3]/button[1]
    Sleep    5
    Click Element    xpath://header/div[1]/div[2]/ul[1]/li[1]/span[1]/i[1]
    Click Element    xpath://a[contains(text(),'Logout')]
    Sleep    5
    

