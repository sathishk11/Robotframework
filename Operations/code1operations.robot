*** Settings ***
Library    RPA.Browser.Selenium
Library    RPA.Windows

*** Keywords ***
Test_Search
    Sleep    5
    Input Text    xpath://input[@id='autosuggest']    India
    Press Keys    xpath://input[@id='autosuggest']    DOWN+DOWN+ENTER
    Click Button    xpath://input[@id='ctl00_mainContent_rbtnl_Trip_1']
    Sleep    3
    Click Element    xpath://span[@id='ctl00_mainContent_ddl_originStation1_CTXTaction']
    Input Text    xpath://input[@id='ctl00_mainContent_ddl_originStation1_CTXT']    Coimbatore
    Sleep    3
    Click Element    xpath://span[@id='ctl00_mainContent_ddl_destinationStation1_CTXTaction']
    Input Text    xpath://input[@id='ctl00_mainContent_ddl_destinationStation1_CTXT']    Hyderabad
    Sleep    5
    Click Element    xpath://input[@id='ctl00_mainContent_chk_friendsandfamily']
    Sleep    1
    Click Element    xpath:/html[1]/body[1]/form[1]/div[4]/div[2]/div[1]/div[5]/div[2]/div[2]/div[2]/div[3]/div[1]/div[4]/button[1]
    Sleep    2
    Click Element    xpath://*[@id='ui-datepicker-div']/div[1]/table/tbody/tr[2]/td[1]/a
    Sleep    2
    Click Element    xpath://body/form[@id='aspnetForm']/div[4]/div[2]/div[1]/div[5]/div[2]/div[2]/div[2]/div[3]/div[1]/div[5]/button[1]
    Sleep    2
    Click Element    xpath://*[@id='ui-datepicker-div']/div[2]/table/tbody/tr[2]/td[1]/a
    Sleep    1
    Click Element    xpath://div[@id='divpaxinfo']
    Sleep    1
    Click Element    xpath://span[@id='hrefIncAdt']
    Click Element    xpath://span[@id='hrefIncAdt']
    Click Element    xpath://span[@id='hrefIncAdt']
    Sleep    1
    Click Element    xpath://input[@id='btnclosepaxoption']
    Click Element    xpath://select[@id='ctl00_mainContent_DropDownListCurrency']
    Sleep    1
    Press Keys    xpath://select[@id='ctl00_mainContent_DropDownListCurrency']    DOWN+DOWN+ENTER
    Sleep    1
    Click Element    xpath://body/form[@id='aspnetForm']/div[4]/div[2]/div[1]/div[5]/div[2]/div[2]/div[2]/div[3]/div[1]/div[12]/span[1]/a[1]
    Sleep    2
    Click Element    xpath://a[@id='SpecialAssistanceWindow']
    Sleep    2
    Click Element    xpath://input[@id='ctl00_mainContent_btn_FindFlights']
    Sleep    2