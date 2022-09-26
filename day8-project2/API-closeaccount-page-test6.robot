*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${login_button}    //button[@id='dt_login_button']

*** Test Cases ***
Login To Deriv
    Open Browser    https://app.deriv.com/    chrome
    Maximize Browser Window
    Wait Until Page Contains Element    //div[@class='btn-purchase__text_wrapper' and contains(.,'Rise')]    30
    Click Element    dt_login_button
    Wait Until Page Contains Element    //input[@type='email']    10
    Input Text    //input[@type='email']    jazli+7@besquare.com.my
    Input Text    //input[@type='password']    Besquare@22 
    Click Element    //button[@type='submit']
    Wait Until Page Contains Element    dt_core_account-info_acc-info    30

Navigate To Manage Account Settings
    Wait Until Page Does Not Contain Element    //*[@aria-label="Loading interface..."]    30
    Click Element    //*[@class="dc-icon"]

Navigate To Close Your Account Page
    Wait Until Page Contains Element    //*[@class="dc-vertical-tab__tab dc-vertical-tab__tab--floating"]    20
    Wait Until Page Contains Element    //*[@class="dc-vertical-tab__header dc-vertical-tab__header--floating" and contains(.,"Close your account")]    20
    Click Element    //*[@class="dc-vertical-tab__header dc-vertical-tab__header--floating" and contains(.,"Close your account")] 

Click "Close My Account"
    Wait Until Page Contains Element    //*[@class="dc-btn dc-btn--primary dc-btn__large closing-account__button--close-account"]    20
    Click Element    //*[@class="dc-btn dc-btn--primary dc-btn__large closing-account__button--close-account"] 

Tick (3 Reasons)
    Wait Until Page Contains Element    //*[@class="dc-checkbox__box"]    20
    Click Element    //*[@class="dc-checkbox__box"]
    Wait Until Page Contains Element    //*[@class="dc-checkbox__box"]    20
    Click Element    //*[@class="dc-checkbox__box"]
    Wait Until Page Contains Element    //*[@class="dc-checkbox__box"]    20
    Click Element    //*[@class="dc-checkbox__box"] 

Fill In First Question In Box
    Wait Until Page Contains Element    //*[@name="other_trading_platforms"]    20
    Click Element    //*[@name="other_trading_platforms"]
    Press Keys    //*[@name="other_trading_platforms"]    Hello World

Fill In Second Question In Box
    Wait Until Page Contains Element    //*[@name="do_to_improve"]    20
    Click Element    //*[@name="do_to_improve"]
    Press Keys    //*[@name="do_to_improve"]    Hello World
    

