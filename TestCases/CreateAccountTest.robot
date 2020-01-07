*** Settings ***
Library     SeLenium2Library
Resource  ../Resources/CreateAccountKeywords.robot


*** Variables ***
${loginName}    abcd
${pword}        abcd123
${mailAdd}      test@gmail.com
${baseURL}      https://staging-funday.bring42.com/secure.php
${browser}      chrome

*** Test Cases ***
CreateAccountTest
    Open Application    ${baseURL}  ${browser}

