*** Variables ***

${FILTER_BUTTON} =    Xpath=//android.view.ViewGroup[@resource-id="x:id/page.listings.filters"]
${SALE_MAXIMIM_RANGE} =    Xpath=//android.view.ViewGroup[@content-desc="Unlimited"]
${MXIMUM_VALUE} =     Xpath=//android.widget.TextView[@resource-id="x:id/dropdown.800000.text"]
${BEDROOM_PLUS} =    Xpath=//android.widget.Button[@content-desc="Increase bedroom count"]
${PROPERTY_TYPE} =    Xpath=//android.view.ViewGroup[@content-desc="Property type"]
${RESIDENTIAL} =    Xpath=//android.view.ViewGroup[@content-desc="x:id/Residential.deselected"]/android.view.ViewGroup
${SEARCH_RESULT_BUTTON} =   Xpath=//android.view.ViewGroup[@resource-id="x:id/page.property_search.footer"]/android.widget.Button[2]/android.view.ViewGroup
${RESULT_ITEM} =    Xpath=//android.view.ViewGroup[@resource-id="x:id/listing_browser.vertical.large_card.0"]
${PRICE_DROPDOWN} =    Xpath=//android.widget.ScrollView[@resource-id="x:id/dropdown.scrollview"]
${START_DROPDOWN} =    Xpath=//android.widget.TextView[@resource-id="x:id/dropdown.25000.text"]
${bedrooms_counter_text} =    Xpath=//android.widget.TextView[@resource-id="x:id/options_sequence.value"]
${MAXIMUM_PRICE} =    800000
${BEDROOM_COUNT} =   4