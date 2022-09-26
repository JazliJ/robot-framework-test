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

Cancel The Close Your Account Page
    Click Element    //*[@class="dc-btn dc-btn--secondary dc-btn__large closing-account__button--cancel"]
    Wait Until Page Does Not Contain Element    //*[@aria-label="Loading interface..."]    30
    Element Should Be Visible    //*[@class="header__menu-item"]