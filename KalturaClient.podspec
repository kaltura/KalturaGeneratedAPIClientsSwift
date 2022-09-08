Pod::Spec.new do |s|
s.name             = 'KalturaClient'
s.version          = '18.14.0'
s.summary          = 'KalturaClient.'
s.homepage         = 'https://github.com/kaltura/KalturaGeneratedAPIClientsSwift'
s.license          = { :type => 'AGPLv3', :text => 'AGPLv3' }
s.author           = { 'Kaltura' => 'community@kaltura.com' }
s.source           = { :git => 'https://github.com/kaltura/KalturaGeneratedAPIClientsSwift.git', :tag => 'v' + s.version.to_s }
s.ios.deployment_target = '10.0'
s.tvos.deployment_target = '10.0'
s.swift_version = '5.0'
s.source_files = 'KalturaClient/Classes/**/*'

 
s.subspec 'Core' do |sp|
    sp.source_files = 'KalturaClient/Classes/**/*'
    sp.dependency 'Log', '2.0'
end
s.default_subspec = 'Core'
end
