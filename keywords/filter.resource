*** Settings ***
Library    AppiumLibrary
Resource    ../resources/locators/filter.resource
Resource    ../commom/common.resource


*** Variables ***
${Range} =    6
${bedroom_number_int} =     0


*** Keywords ***
Click Filter 
    Wait for Element and then Click    ${FILTER_BUTTON}

Fill Proprties

    Select Sale Range 
    Select Rooms    ${Range}
    Select Property Type

Select Sale Range 
    Wait for Element and then Click    ${SALE_MAXIMIM_RANGE}
    common.Swipe Until Element Is Visible    ${PRICE_DROPDOWN}    ${MXIMUM_VALUE}    18
    Wait for Element and then Click    ${MXIMUM_VALUE}


Select Rooms
    [Arguments]    ${Range}
    ${bedroom_number_text} =    Get Text    ${bedrooms_counter_text}

    
    IF    $bedroom_number_text == 'Any'
        ${bedroom_number_int} =    Set Variable    0
    ELSE IF    '+' in '${bedroom_number_text}'
       
        Continue For Loop
    ELSE
        ${bedroom_number_int} =    Convert To Integer    ${bedroom_number_text}
    END

    
    FOR    ${counter}    IN RANGE    0    ${Range}    1
        IF    ${bedroom_number_int} < ${Range}
            Click Element    ${BEDROOM_PLUS}
        END
    END
Select Property Type
    Wait for Element and then Click    ${PROPERTY_TYPE}
    Wait for Element and then Click    ${RESIDENTIAL}

Click Search Reault
   Wait for Element and then Click    ${SEARCH_RESULT_BUTTON}

Click into result item
    Wait for Element and then Click    ${RESULT_ITEM}




    
