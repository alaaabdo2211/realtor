*** Variables ***

${APPIUM_URL}   http://127.0.0.1:4723/wd/hub
${PLATFORM}     Android
${deviceName}  emulator-5554
${appPackage}      ca.crea.app.consumer
${appActivity}     ca.crea.app.consumer.MainActivity
${uiautomator}    UiAutomator2

${LOCATION_PERMISSION} =    Xpath=//android.widget.Button[@resource-id="com.android.permissioncontroller:id/permission_allow_foreground_only_button"]
