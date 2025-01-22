*** Settings ***
Library     DebugLibrary
Library    String
Library    AppiumLibrary
Resource    ../resources/locators/androidsettings.resource


*** Keywords ***
Open Real Estate Application
    Open Application    
    ...    ${APPIUM_URL}
    ...    platformName=${PLATFORM}
    ...    udid=${deviceName}
    ...    appPackage=${appPackage}
    ...    appActivity=${appActivity}
    ...    automationName=${uiautomator}
Wait for Element and then Click
    [Arguments]    ${locator}    ${timeout}=30s
    Wait Until Element Is Visible    ${locator}     ${timeout}
    Click Element   ${locator}

Allow Location Permission 
    Wait for Element and then Click    ${LOCATION_PERMISSION}


Swipe Until Element Is Visible
    [Arguments]    ${scrollable_locator}    ${target_locator}    ${max_attempts}=20
    ${attempt}=    Set Variable    0

    WHILE    ${attempt} < ${max_attempts}

        ${is_visible}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${target_locator}        0.5s
        Exit For Loop If    ${is_visible}

        ${element_location}=    Get Element Location    ${scrollable_locator}
        ${element_size}=    Get Element Size    ${scrollable_locator}

        ${start_x}=    Evaluate    ${element_location}[x] + (${element_size}[width] * 0.5)
        ${start_y}=    Evaluate    ${element_location}[y] + (${element_size}[height] * 0.8)
        ${end_y}=    Evaluate    ${element_location}[y] + (${element_size}[height] * 0.2)

        Swipe    ${start_x}    ${start_y}    ${start_x}    ${end_y}    1000

        ${attempt}=    Evaluate    ${attempt} + 1
    END


    

