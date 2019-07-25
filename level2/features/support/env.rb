# frozen_string_literal: true

require 'appium_lib'
require 'rspec/expectations'
require 'pry'

#  adb shell dumpsys window windows | grep -E 'mCurrentFocus'
caps = {
  caps: {
    deviceName: 'Android J7',
    platformName: 'Android',
    appPackage: 'com.ba.universalconverter',
    appActivity: 'MainConverterActivity',
    newCommandTimeout: '3600',
    noReset: true,
    automationName: 'UiAutomator2'
  }
}

Appium::Driver.new(caps, true)
Appium.promote_appium_methods Object
