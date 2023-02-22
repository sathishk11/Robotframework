*** Settings ***
# Library    RPA.Browser.Selenium
Library    SeleniumLibrary
Resource    ../Operations/Frames_operations.robot

*** Variables ***
${url}    https://www.selenium.dev/selenium/docs/api/java/index.html?overview-summary.html
${browser}    chrome

*** Test Cases ***
Handle_Frames
    Open Browser    ${url}    ${browser}
    Set Selenium Speed    1seconds
    Maximize Browser Window
    FrameHandlingTest
    Close Browser