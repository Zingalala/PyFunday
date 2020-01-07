*** Settings ***
Library     Selenium2Library
Variables  ../PageObjects/CreateAccountLocators.py
Variables  ../PageObjects/LoginLocators.py


*** Variables ***
${logName}      abcd
${pword}        abcd123
${mailAdd}      test@gmail.com
${baseURL}      https://staging-funday.bring42.com/secure.php
${browser}      chrome


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

#Enter Credantials
#    [Arguments]  ${uname}    ${passcode}
#    input text  ${loginName}        ${uname}
#    input text  ${loginPassword}    ${passcode}
#
#Click Login
#    click button    ${loginBtn}


#*** Test Cases ***
#Test Create Account
#    Open Application    ${baseURL}      ${browser}
#    sleep   1s
#    Goto Create Account
#    Enter AccountDetails    ${logName}    ${pword}     ${mailAdd}
#    Click Register
#    sleep   0.25s
#    alert should be present     action=ACCEPT
#
#Test Login
#    Enter Credantials   ${logName}    ${pword}
#    Click Login
#
#Test

