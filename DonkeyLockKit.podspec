Pod::Spec.new do |spec|
  spec.name          = 'DonkeyLockKit'
  spec.version       = '0.1.1'
  spec.license      = {
    :type => 'Copyright',
    :text => <<-LICENSE
    Donkey Lock Kit
    Created by Donkey Republic on 17/05/2021
    Copyright (c) 2021 Donkey Republic. All rights reserved.
    LICENSE
  }
  spec.homepage      = 'https://github.com/donkeyrepublic/lockkit-ios'
  spec.author        = 'Donkey Republic'
  spec.summary       = 'Donkey Lock Kit'
  spec.source        = {
    :http => "https://developer.donkey.bike/tomp/lockkit/releases/ios/#{spec.version.to_s}/DonkeyLockKit_iOS_#{spec.version.to_s}.zip"
  }
  spec.swift_version = '5.3'
  spec.platform      = :ios, '11.0'
  spec.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  spec.vendored_frameworks = 'DonkeyLockKit.xcframework'
  spec.preserve_paths = ['DonkeyLockKit.xcframework', 'README.md']
end
