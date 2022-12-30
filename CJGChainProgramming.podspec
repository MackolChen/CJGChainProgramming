#
# Be sure to run `pod lib lint CJGChainProgramming.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'CJGChainProgramming'
  s.version          = '0.0.3'
  s.summary          = '链式编程'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/MackolChen'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'MackolChen' => 'chenjg@tiens.com' }
  s.source           = { :git => 'https://github.com/MackolChen/CJGChainProgramming.git', :tag => s.version.to_s }
  s.ios.deployment_target = '11.0'
  s.source_files = 'CJGChainProgramming/Classes/CJGChainProgramming.h'
  s.public_header_files = 'CJGChainProgramming/Classes/CJGChainProgramming.h'
  #=========================CJGChainProgrammingBase==================================
  s.subspec 'CJGChainProgrammingBase' do |ss|
    ss.source_files = 'CJGChainProgramming/Classes/CJGChainProgrammingBase/*.{h,m}'
    
  end
  #=========================UIView==================================
  s.subspec 'UIView' do |ss|
    ss.source_files = 'CJGChainProgramming/Classes/UIView/*.{h,m}'
    ss.dependency "CJGChainProgramming/CJGChainProgrammingBase"
    ss.dependency "CJGChainProgramming/Categories"
    ss.dependency "CJGChainProgramming/CALayer"
    ss.dependency "CJGChainProgramming/UIGesture"
  end
  #=========================CALayer==================================
  s.subspec 'CALayer' do |ss|
    ss.source_files = 'CJGChainProgramming/Classes/CALayer/*.{h,m}'
    ss.dependency "CJGChainProgramming/CJGChainProgrammingBase"
    ss.dependency "CJGChainProgramming/Categories"
  end
  #=========================UIGesture==================================
  s.subspec 'UIGesture' do |ss|
    ss.source_files = 'CJGChainProgramming/Classes/UIGesture/*.{h,m}'
    ss.dependency "CJGChainProgramming/CJGChainProgrammingBase"
    ss.dependency "CJGChainProgramming/Categories"
  end
  #=========================Categories==================================
  s.subspec 'Categories' do |ss|
    ss.source_files = 'CJGChainProgramming/Classes/Categories/*.{h,m}'
  end
   s.dependency 'Masonry'
end
