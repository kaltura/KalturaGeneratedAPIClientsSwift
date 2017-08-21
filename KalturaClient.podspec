Pod::Spec.new do |s|
s.name             = 'KalturaClient'
s.version          = '0.1.0'
s.summary          = 'KalturaClient.'
s.homepage         = 'https://github.com/tan-tan-kanarek/KalturaClient'
s.license          = { :type => 'AGPLv3', :text => 'AGPLv3' }
s.author           = { 'Kaltura' => 'community@kaltura.com' }
s.source           = { :git => 'https://github.com/tan-tan-kanarek/KalturaClient.git', :tag => s.version.to_s }
s.ios.deployment_target = '8.0'
s.source_files = 'KalturaClient/Classes/**/*'
 
s.subspec 'Core' do |sp|
    sp.source_files = 'Classes/**/*'
    sp.dependency 'SwiftyJSON', '3.1.4'
    sp.dependency 'Log', '1.0'
end
s.subspec 'metadata' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/metadata/**/*'
 ssp.dependency 'KalturaClient/Core'
end

s.subspec 'document' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/document/**/*'
 ssp.dependency 'KalturaClient/Core'
end

s.subspec 'fileSync' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/fileSync/**/*'
 ssp.dependency 'KalturaClient/Core'
end

s.subspec 'systemPartner' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/systemPartner/**/*'
 ssp.dependency 'KalturaClient/Core'
end

s.subspec 'adminConsole' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/adminConsole/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/fileSync'
end

s.subspec 'KalturaInternalTools' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/KalturaInternalTools/**/*'
 ssp.dependency 'KalturaClient/Core'
end

s.subspec 'virusScan' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/virusScan/**/*'
 ssp.dependency 'KalturaClient/Core'
end

s.subspec 'contentDistribution' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/contentDistribution/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/metadata'
end

s.subspec 'youtubeApiDistribution' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/youtubeApiDistribution/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/contentDistribution'
end

s.subspec 'cuePoint' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/cuePoint/**/*'
 ssp.dependency 'KalturaClient/Core'
end

s.subspec 'eventCuePoint' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/eventCuePoint/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/cuePoint'
end

s.subspec 'adCuePoint' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/adCuePoint/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/cuePoint'
end

s.subspec 'codeCuePoint' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/codeCuePoint/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/cuePoint'
end

s.subspec 'thumbCuePoint' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/thumbCuePoint/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/cuePoint'
end

s.subspec 'annotation' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/annotation/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/cuePoint'
end

s.subspec 'quiz' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/quiz/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/cuePoint'
end

s.subspec 'shortLink' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/shortLink/**/*'
 ssp.dependency 'KalturaClient/Core'
end

s.subspec 'bulkUpload' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/bulkUpload/**/*'
 ssp.dependency 'KalturaClient/Core'
end

s.subspec 'bulkUploadCsv' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/bulkUploadCsv/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/bulkUpload'
end

s.subspec 'bulkUploadXml' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/bulkUploadXml/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/bulkUpload'
end

s.subspec 'bulkUploadFilter' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/bulkUploadFilter/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/bulkUpload'
end

s.subspec 'dropFolder' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/dropFolder/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/metadata'
end

s.subspec 'dropFolderXmlBulkUpload' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/dropFolderXmlBulkUpload/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/bulkUploadXml'
 ssp.dependency 'KalturaClient/dropFolder'
end

s.subspec 'caption' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/caption/**/*'
 ssp.dependency 'KalturaClient/Core'
end

s.subspec 'captionSearch' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/captionSearch/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/caption'
end

s.subspec 'attachment' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/attachment/**/*'
 ssp.dependency 'KalturaClient/Core'
end

s.subspec 'ideticDistribution' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/ideticDistribution/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/contentDistribution'
end

s.subspec 'tagSearch' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/tagSearch/**/*'
 ssp.dependency 'KalturaClient/Core'
end

s.subspec 'like' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/like/**/*'
 ssp.dependency 'KalturaClient/Core'
end

s.subspec 'varConsole' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/varConsole/**/*'
 ssp.dependency 'KalturaClient/Core'
end

s.subspec 'eventNotification' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/eventNotification/**/*'
 ssp.dependency 'KalturaClient/Core'
end

s.subspec 'emailNotification' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/emailNotification/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/eventNotification'
end

s.subspec 'httpNotification' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/httpNotification/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/eventNotification'
end

s.subspec 'externalMedia' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/externalMedia/**/*'
 ssp.dependency 'KalturaClient/Core'
end

s.subspec 'drm' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/drm/**/*'
 ssp.dependency 'KalturaClient/Core'
end

s.subspec 'widevine' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/widevine/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/drm'
end

s.subspec 'playReady' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/playReady/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/drm'
end

s.subspec 'kontiki' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/kontiki/**/*'
 ssp.dependency 'KalturaClient/Core'
end

s.subspec 'velocix' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/velocix/**/*'
 ssp.dependency 'KalturaClient/Core'
end

s.subspec 'wowza' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/wowza/**/*'
 ssp.dependency 'KalturaClient/Core'
end

s.subspec 'schedule' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/schedule/**/*'
 ssp.dependency 'KalturaClient/Core'
end

s.subspec 'scheduledTask' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/scheduledTask/**/*'
 ssp.dependency 'KalturaClient/Core'
end

s.subspec 'scheduledTaskMetadata' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/scheduledTaskMetadata/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/scheduledTask'
 ssp.dependency 'KalturaClient/metadata'
end

s.subspec 'scheduledTaskEventNotification' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/scheduledTaskEventNotification/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/scheduledTask'
 ssp.dependency 'KalturaClient/eventNotification'
end

s.subspec 'scheduledTaskContentDistribution' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/scheduledTaskContentDistribution/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/scheduledTask'
 ssp.dependency 'KalturaClient/contentDistribution'
end

s.subspec 'scheduleBulkUpload' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/scheduleBulkUpload/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/bulkUpload'
 ssp.dependency 'KalturaClient/schedule'
end

s.subspec 'scheduleDropFolder' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/scheduleDropFolder/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/scheduleBulkUpload'
 ssp.dependency 'KalturaClient/dropFolder'
end

s.subspec 'FeedDropFolder' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/FeedDropFolder/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/dropFolder'
end

s.subspec 'transcript' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/transcript/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/attachment'
end

s.subspec 'integration' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/integration/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/metadata'
end

s.subspec 'voicebase' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/voicebase/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/integration'
 ssp.dependency 'KalturaClient/transcript'
end

s.subspec 'cielo24' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/cielo24/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/integration'
 ssp.dependency 'KalturaClient/transcript'
end

s.subspec 'facebookDistribution' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/facebookDistribution/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/contentDistribution'
end

s.subspec 'poll' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/poll/**/*'
 ssp.dependency 'KalturaClient/Core'
end

s.subspec 'viewHistory' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/viewHistory/**/*'
 ssp.dependency 'KalturaClient/Core'
end

s.default_subspec = 'Core'
end
