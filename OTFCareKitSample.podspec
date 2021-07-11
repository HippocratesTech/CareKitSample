#
# Be sure to run `pod lib lint OTFCareKitSample.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'OTFCareKitSample'
  s.version          = '1.0'
  s.summary          = 'A short description of OTFCareKitSample.'
  s.description      = "Add long description of the pod here."
  s.homepage         = 'https://github.com/HippocratesTech/otftoolboxshowcase'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'kutakmir' => 'kutakmiroslav@gmail.com' }
  s.source           = { :git => 'https://github.com/HippocratesTech/otftoolboxshowcase.git' }
  s.watchos.deployment_target = '6.0'
  s.source_files = 'OTFCareKitSample/**/*.{h,m,swift}'
  s.platform         = :ios
  s.swift_versions = '5.0'
  s.ios.deployment_target = '13.0'
  s.default_subspec = 'Health'

  s.subspec 'Care' do |ss|
    ss.pod_target_xcconfig = { 
	'SWIFT_ACTIVE_COMPILATION_CONDITIONS' => '$(inherited) CARE'
    }
    ss.dependency 'OTFCareKit/Care', '1.0'
  end

  s.subspec 'Health' do |ss|
    ss.pod_target_xcconfig = { 
	'SWIFT_ACTIVE_COMPILATION_CONDITIONS' => '$(inherited) HEALTH'
    }
    ss.dependency 'OTFCareKit/Health', '1.0'
  end

  s.subspec 'CareHealth' do |ss|
    ss.pod_target_xcconfig = { 
	'SWIFT_ACTIVE_COMPILATION_CONDITIONS' => '$(inherited) CARE HEALTH'
    }
    ss.dependency 'OTFCareKit/CareHealth', '1.0'
  end

end

