*** Settings ***

Library    AppiumLibrary
Resource    ../resources/locators/search.resource
Resource    ../commom/common.resource

*** Keywords ***
Search for Ottawa 
    Wait for Element and then Click    ${DISMISS_BUTTON}
    Wait for Element and then Click    ${SEARCH_LOCATION}
    Input Text    ${SEARCH_LOCATION}    ${OTTAWA_CITY}
    Wait for Element and then Click    ${LOCATION_ITEM}    
    
        