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

Navigate To Demo Account
    Wait Until Page Does Not Contain Element    //*[@aria-label="Loading interface..."]
    Click Element    dt_core_account-info_acc-info
    Click Element    //*[@id="dt_core_account-switcher_demo-tab"]
    Wait Until Element Is Visible    //*[@id="dt_core_account-switcher_demo-tab"]
    Click Element    //*[@class="acc-switcher__id"]

Navigate To Volatility 10(1s) Index
    Wait Until Page Contains Element    //*[@class="cq-symbol-select-btn__container"]    20
    Click Element    //*[@class="cq-symbol-select-btn__container"]
    Sleep    5
    Wait Until Page Contains Element    //div[@class="sc-mcd__tabs"]    20
    Wait Until Page Contains Element    //*[@class="sc-mcd__filter__item sc-mcd__filter__item--selected" and contains(.,'Synthetic Indices')]    30
    Click Element    //*[@class="sc-mcd__filter__item sc-mcd__filter__item--selected" and contains(.,'Synthetic Indices')]
    Wait Until Page Contains Element    //div[@class="sc-mcd__item sc-mcd__item--1HZ10V "]    20
    Click Element    //div[@class="sc-mcd__item__name"]

Buy The Rise Contract 
    Wait Until Page Contains Element    //div[@class='btn-purchase__shadow-wrapper' and contains(.,'Rise')]     
    Click Element    //div[@class='btn-purchase__shadow-wrapper' and contains(.,'Rise')]
    