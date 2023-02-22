*** Settings ***
Library    RPA.Browser.Selenium    auto_close=${False}
Library    RPA.Windows
# Library    SeleniumLibrary
Resource    ../Operations/code1operations.robot

*** Variables ***
${url}    https://rahulshettyacademy.com/dropdownsPractise/
${browser}    chrome

*** Test Cases ***
Flight_Section
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Test_Search

