*** Variables ***

${RESULT_ITEM} =    Xpath=//android.view.ViewGroup[@content-desc="x:id/page.listings.map, Showing listings in Ottawa, ON, Canada, Filters, 3"]/android.view.ViewGroup[3]/android.view.ViewGroup

${PRICE_SALE} =    id=x:id/page.property_details.summary.sale_price
${BEDROOMS_COUNT} =    Xpath=//android.widget.TextView[@resource-id="x:id/page.property_details.summary.bedrooms.value"]
${REALTOR_IMAGE} =    Xpath=//android.view.ViewGroup[@resource-id="x:id/view.realtor_information.card.photo"]
${Realtor_screen} =     Xpath=//android.widget.ScrollView[@resource-id="x:id/page.property_details"]
${realtor_info_box} =    Xpath=(//android.widget.TextView[@resource-id="x:id/view.realtor_information.card.organization.name.text"])[1]
${REALTOR_FULL_NAME} =    Xpath=//android.widget.TextView[@text="MARNIE BENNETT"]
${GET_IN_TOUCH} =    Xpath=//android.widget.Button[@resource-id="x:id/view.realtor_information.card.realtor.contact"]
${PHONE_NUMBER} =    Xpath=//android.widget.TextView[@resource-id="x:id/view.realtor_information.card.realtor.phone.text"]