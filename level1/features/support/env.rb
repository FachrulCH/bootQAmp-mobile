# frozen_string_literal: true

require 'appium_lib'

#  adb shell dumpsys window windows | grep -E 'mCurrentFocus'
caps = {
  caps: {
    deviceName: 'Android J7',
    platformName: 'Android',
    app: File.join(File.dirname(__FILE__), 'converter_v1.23.apk'),
    appPackage: 'com.ba.universalconverter',
    appActivity: 'MainConverterActivity',
    newCommandTimeout: '3600',
    automationName: 'UiAutomator2'
  }
}

Appium::Driver.new(caps, true)
Appium.promote_appium_methods Object
