#
# Be sure to run `pod lib lint XLEasyImageSelect.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "XLEasyImageSelect"
  s.version          = "0.1.0"
  s.summary          = "简单的图片选择器，类似于微信"

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!  
  s.description      = <<-DESC
                    图片的批量选择，图片的单张选择（相册、拍照）编辑
                       DESC

  s.homepage         = "https://github.com/randyeasy/XLEasyImageSelect"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Randy" => "ouyaliang@163.com" }
  s.source           = { :git => "https://github.com/randyeasy/XLEasyImageSelect.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'XLEasyImageSelect' => ['Pod/Assets/*.png']
  }

  s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit'

  s.dependency 'PureLayout', '~> 3.0.1'
  s.dependency 'XLEasyKitUtils', '~> 0.1.0'
  s.dependency 'LLSimpleCamera', '~> 4.1'

s.prefix_header_contents =
'#import <XLEasyKitUtils/XLEasyKitUtils.h>',
'#import <PureLayout/PureLayout.h>',
'#import "UIImage+XLEI.h"'

end
