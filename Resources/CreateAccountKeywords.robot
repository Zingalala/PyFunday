*** Settings ***
Library     Selenium2Library
Variables  ../PageObjects/CreateAccountLocators.py

*** Keywords ***
Open Application
    [Arguments]  ${URL}     ${Browser}
    open browser    ${URL}   ${Browser}
    maximize browser window

Goto Create Account
    click element   ${createAccount}

Enter AccountDetails
    [Arguments]  ${uname}   ${passcode}     ${mailId}
    input text   ${userName}         ${uname}
    input text   ${password}         ${passcode}
    input text   ${confirmPassword}  ${passcode}
    input text   ${email}            ${mailId}

Click Register
    click button  ${registerBtn}






