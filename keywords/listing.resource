*** Settings ***
Resource    ../resources/locators/listing.resource
Resource    ../resources/locators/filter.resource
Resource    ../commom/common.resource


*** Keywords ***

Check Elements with given value 
    Check Price Range
    Check Room Number

Check Price Range
    Wait Until Element Is Visible      ${PRICE_SALE}  
    ${PRICE} =   Get Text    ${PRICE_SALE}
    ${PRICE_STRING1} =    String.Replace String    ${PRICE}    $    ${EMPTY}
    ${PRICE_STRING} =    String.Replace String    ${PRICE_STRING1}    ,    ${EMPTY}
    ${price} =    Convert To Integer    ${PRICE_STRING}
    IF    ${price} <= ${MAXIMUM_PRICE}
        Log   In range
    ELSE
        Log  Out of the range
    END

Check Room Number    
    Wait Until Element Is Visible      ${BEDROOMS_COUNT} 
    ${ROOMS_NUMBER} =    Get Text    ${BEDROOMS_COUNT}
    IF    ${ROOMS_NUMBER} <= ${BEDROOM_COUNT}
        Log    Matched Number
    ELSE
        Log     The number doesn't match
    END

Print Realtor info
    common.Swipe Until Element Is Visible    ${Realtor_screen}    ${realtor_info_box}   8
    ${realtor_name} =    Get Text    ${REALTOR_FULL_NAME}
    Log    ${realtor_name}
Get In touch
    Click Element    ${GET_IN_TOUCH}
    Wait Until Element Is Visible     ${PHONE_NUMBER}
    ${PHONE_NUMBER_TEXT} =    Get Text    ${PHONE_NUMBER}
    ${phone_number_realtor} =    Replace String   ${PHONE_NUMBER_TEXT}     Call    ${EMPTY}
    Log    ${phone_number_realtor}

    