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

Navigate To Manage Account Settings
    Wait Until Page Does Not Contain Element    //*[@aria-label="Loading interface..."]    30
    Click Element    //*[@class="dc-icon"]

Navigate To API Token Page
    Wait Until Page Contains Element    //*[@class="dc-vertical-tab__tab dc-vertical-tab__tab--floating"]    20
    Wait Until Page Contains Element    //*[@class="dc-vertical-tab__header dc-vertical-tab__header--floating" and contains(.,"API token")]    20
    Click Element    //*[@class="dc-vertical-tab__header dc-vertical-tab__header--floating" and contains(.,"API token")]

Select Scopes Access Read
    Wait Until Page Contains Element    //label[@class="dc-checkbox"]    20
    Wait Until Page Contains Element    //label[@class="dc-checkbox" and contains(.,"Read")]    20
    Click Element    //label[@class="dc-checkbox" and contains(.,"Read")] 

Select Scopes Access Trade
    Wait Until Page Contains Element    //label[@class="dc-checkbox"]    20
    Wait Until Page Contains Element    //label[@class="dc-checkbox" and contains(.,"Read")]    20
    Click Element    //label[@class="dc-checkbox" and contains(.,"Trade")] 

Select Scopes Access Payments
    Wait Until Page Contains Element    //label[@class="dc-checkbox"]    20
    Wait Until Page Contains Element    //label[@class="dc-checkbox" and contains(.,"Read")]    20
    Click Element    //label[@class="dc-checkbox" and contains(.,"Payments")] 

Select Scopes Access Trading information
    Wait Until Page Contains Element    //label[@class="dc-checkbox"]    20
    Wait Until Page Contains Element    //label[@class="dc-checkbox" and contains(.,"Read")]    20
    Click Element    //label[@class="dc-checkbox" and contains(.,"Trading information")] 

Select Scopes Access Admin
    Wait Until Page Contains Element    //label[@class="dc-checkbox"]    20
    Wait Until Page Contains Element    //label[@class="dc-checkbox" and contains(.,"Read")]    20
    Click Element    //label[@class="dc-checkbox" and contains(.,"Admin")] 

Create A Token Name
    Wait Until Page Contains Element    //*[@class="dc-input__field"]    20
    Click Element    //*[@class="dc-input__field"]
    Press Keys    //*[@class="dc-input__field"]    Test_API
    Wait Until Page Contains Element    //button[@class="dc-btn dc-btn__effect dc-btn--primary dc-btn__large dc-btn__button-group da-api-token__button"]    20
    Click Element    //button[@class="dc-btn dc-btn__effect dc-btn--primary dc-btn__large dc-btn__button-group da-api-token__button"]

Token Visibility To Users
    Click Element    //*[@class="dc-icon da-api-token__visibility-icon"]
    Element Should Be Enabled    //*[@class="dc-icon da-api-token__visibility-icon"]   