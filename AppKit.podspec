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
  spec.license      = "MIT (example)"

  spec.author             = { "Tran Thien Khiem" => "tuoitrevohoc@me.com" }

  spec.platform     = :ios
  spec.platform     = :ios, "13.0"

  spec.source       = { :git => "https://github.com/tuoitrevohoc/AppKit.git", :commit => "f4929a45cb41d182574cf9e3d5ccafebc38ede5d" }
  spec.source_files  = "AppKit", "Classes/**/*.{h,m,swift}"
end
