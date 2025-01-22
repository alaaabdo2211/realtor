*** Variables ***

${DISMISS_BUTTON} =    Xpath=//android.widget.Button[@content-desc="Dismiss"]
${SEARCH_LOCATION} =    Xpath=//android.widget.EditText[@resource-id="x:id/page.listings.search_textbox.textbox"]
${OTTAWA_CITY} =     Ottawa
${LOCATIONS_DROPDOWN} =    Xpath=//android.widget.ScrollView[@content-desc="x:id/page.property_search.search_suggestions"]
${LOCATION_ITEM} =    Xpath=//android.widget.TextView[@resource-id="x:id/page.property_search.search_suggestions.item" and @text="Ottawa, Ontario"]
