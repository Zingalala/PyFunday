*** Settings ***
Library     Selenium2Library
Resource    ../Resources/CreateAccountKeywords.robot
Resource    ../Resources/CreateSpotKeywords.robot
Resource    ../Resources/LoginKeywords.robot


*** Variables ***
${logName}      abcd25
${pword}        abcd123
${mailAdd}      test@gmail.com
${baseURL}      https://staging-funday.bring42.com/secure.php
${browser}      chrome
${sName}        Test Spot
${address}      Sentosa Resort
${city}         Home Town
${timeout}      10s


*** Test Cases ***
Test Create Account
    Open Application    ${baseURL}      ${browser}
    sleep   1s
    Goto Create Account
    Enter AccountDetails    ${logName}    ${pword}     ${mailAdd}
    Click Register
    sleep   0.25s
    # Check pop-up on successfull accout creation
    alert should be present     action=ACCEPT

Test Login
    Enter Credantials   ${logName}    ${pword}
    Click Login
    wait until element is visible   ${spotName}  ${timeout}

Test Add a Spot
    Enter Spot Name     ${sName}
    Enter Spot Address  ${address}
    Enter City          ${city}
    Click Add Button

Close
    close browser

