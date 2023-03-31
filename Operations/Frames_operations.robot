*** Settings ***
Library    RPA.Browser.Selenium
# Library    SeleniumLibrary

*** Keywords ***
FrameHandlingTest
    Select Frame    packageListFrame
    Click Link    org.openqa.selenium.bidi.browsingcontext
    Unselect Frame
    Select Frame    packageFrame
    Click Link    BrowsingContext
    Unselect Frame
    Select Frame    classFrame
    Click Link    LIST_OF_BROWSING_CONTEXT_INFO 