*** Settings ***
Library     Selenium2Library
Variables  ../PageObjects/LoginLocators.py

*** Variables ***


*** Keywords ***
Enter Credantials
    [Arguments]  ${uname}    ${passcode}
    input text  ${loginName}        ${uname}
    input text  ${loginPassword}    ${passcode}

Click Login
    click button    ${loginBtn}
