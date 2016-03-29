#
# Be sure to run `pod lib lint ${POD_NAME}.podspec' to ensure this is a
# valid spec before submitting.
#

Pod::Spec.new do |s|
  s.name             = "${POD_NAME}"
  s.version          = "0.1.0"
  s.summary          = "A short description of ${POD_NAME}."
  s.homepage         = "https://github.com/minddistrict/ios-pods"
  s.license          = 'Owned by Minddistrict'
  s.author           = { "${USER_NAME}" => "${USER_EMAIL}" }
  s.source           = { :git => "https://github.com/minddistrict/ios-pods.git", :tag => "${POD_NAME}/#{s.version.to_s}" }

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = '${POD_NAME}/Pod/**/*.{swift}'
  s.exclude_files = [
    '${POD_NAME}/Pod/**/*.spec.{swift}'
  ]
  s.resource_bundles = {
    'MinddistrictWith' => ['${POD_NAME}/Pod/*.{png,jpg,plist}']
  }

  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
