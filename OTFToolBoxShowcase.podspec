#
# Be sure to run `pod lib lint OTFToolBoxShowcase.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'OTFToolBoxShowcase'
  s.version          = '1.0'
  s.summary          = 'A short description of OTFToolBoxShowcase.'
  s.description      = "Add long description of the pod here."
  s.homepage         = 'https://github.com/HippocratesTech/otftoolboxshowcase'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'kutakmir' => 'kutakmiroslav@gmail.com' }
  s.source           = { :git => 'https://github.com/HippocratesTech/otftoolboxshowcase.git' }
  s.watchos.deployment_target = '6.0'
  s.source_files = 'OTFSample/**/*.{h,m,swift}'
  s.platform         = :ios
  s.swift_versions = '5.0'
  s.ios.deployment_target = '13.0'
  s.dependency 'OTFCareKit/Health', '1.0'

end

