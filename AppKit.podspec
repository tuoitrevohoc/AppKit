#
#  Be sure to run `pod spec lint AppKit.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  spec.name         = "AppKit"
  spec.version      = "0.0.1"
  spec.summary      = "The framework to create super app"
  spec.homepage     = "https://github.com/tuoitrevohoc/AppKit"
  spec.license      = "MIT"

  spec.author             = { "Tran Thien Khiem" => "tuoitrevohoc@me.com" }

  spec.platform     = :ios, "13.1"

  spec.source       = { :git => "https://github.com/tuoitrevohoc/AppKit.git", :tag => "0.0.2" }
  spec.source_files  = "AppKit", "AppKit/**/*.{h,m,swift}"
  spec.swift_version = "5.0"
end
