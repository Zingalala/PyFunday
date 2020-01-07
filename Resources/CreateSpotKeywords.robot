*** Settings ***
Library     Selenium2Library
Variables  ../PageObjects/AddSpotLocators.py

*** Keywords ***
Enter Spot Name
    [Arguments]  ${spot}
    input text  ${spotName}     ${spot}

Enter Spot Address
    [Arguments]  ${address}
    input text  ${spotAddress}     ${address}

Enter City
    [Arguments]  ${city}
    input text  ${cityLoc}     ${city}

#Select Category

Click Add Button
    click button    ${addBtn}

