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

s.subspec 'adCuePoint' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/adCuePoint/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/cuePoint'
end

s.subspec 'annotation' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/annotation/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/cuePoint'
end

s.subspec 'aspera' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/aspera/**/*'
 ssp.dependency 'KalturaClient/Core'
end

s.subspec 'attUverseDistribution' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/attUverseDistribution/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/contentDistribution'
end

s.subspec 'attachment' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/attachment/**/*'
 ssp.dependency 'KalturaClient/Core'
end

s.subspec 'audit' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/audit/**/*'
 ssp.dependency 'KalturaClient/Core'
end

s.subspec 'avnDistribution' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/avnDistribution/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/contentDistribution'
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

s.subspec 'caption' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/caption/**/*'
 ssp.dependency 'KalturaClient/Core'
end

s.subspec 'captionSearch' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/captionSearch/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/caption'
end

s.subspec 'captureSpace' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/captureSpace/**/*'
 ssp.dependency 'KalturaClient/Core'
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

s.subspec 'comcastMrssDistribution' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/comcastMrssDistribution/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/contentDistribution'
 ssp.dependency 'KalturaClient/caption'
 ssp.dependency 'KalturaClient/cuePoint'
end

s.subspec 'contentDistribution' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/contentDistribution/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/metadata'
end

s.subspec 'crossKalturaDistribution' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/crossKalturaDistribution/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/contentDistribution'
end

s.subspec 'cuePoint' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/cuePoint/**/*'
 ssp.dependency 'KalturaClient/Core'
end

s.subspec 'dailymotionDistribution' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/dailymotionDistribution/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/contentDistribution'
end

s.subspec 'doubleClickDistribution' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/doubleClickDistribution/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/contentDistribution'
 ssp.dependency 'KalturaClient/cuePoint'
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

s.subspec 'emailNotification' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/emailNotification/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/eventNotification'
end

s.subspec 'eventNotification' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/eventNotification/**/*'
 ssp.dependency 'KalturaClient/Core'
end

s.subspec 'FeedDropFolder' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/FeedDropFolder/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/dropFolder'
end

s.subspec 'httpNotification' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/httpNotification/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/eventNotification'
end

s.subspec 'pushNotification' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/pushNotification/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/eventNotification'
end

s.subspec 'fileSync' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/fileSync/**/*'
 ssp.dependency 'KalturaClient/Core'
end

s.subspec 'freewheelDistribution' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/freewheelDistribution/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/contentDistribution'
end

s.subspec 'freewheelGenericDistribution' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/freewheelGenericDistribution/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/contentDistribution'
 ssp.dependency 'KalturaClient/cuePoint'
end

s.subspec 'ftpDistribution' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/ftpDistribution/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/contentDistribution'
end

s.subspec 'huluDistribution' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/huluDistribution/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/contentDistribution'
 ssp.dependency 'KalturaClient/cuePoint'
end

s.subspec 'ideticDistribution' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/ideticDistribution/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/contentDistribution'
end

s.subspec 'KalturaSharepointExtension' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/KalturaSharepointExtension/**/*'
 ssp.dependency 'KalturaClient/Core'
end

s.subspec 'like' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/like/**/*'
 ssp.dependency 'KalturaClient/Core'
end

s.subspec 'metroPcsDistribution' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/metroPcsDistribution/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/contentDistribution'
end

s.subspec 'msnDistribution' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/msnDistribution/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/contentDistribution'
end

s.subspec 'multiCenters' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/multiCenters/**/*'
 ssp.dependency 'KalturaClient/Core'
end

s.subspec 'ndnDistribution' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/ndnDistribution/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/contentDistribution'
end

s.subspec 'podcastDistribution' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/podcastDistribution/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/contentDistribution'
end

s.subspec 'quickPlayDistribution' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/quickPlayDistribution/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/contentDistribution'
end

s.subspec 'shortLink' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/shortLink/**/*'
 ssp.dependency 'KalturaClient/Core'
end

s.subspec 'synacorHboDistribution' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/synacorHboDistribution/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/contentDistribution'
end

s.subspec 'tvComDistribution' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/tvComDistribution/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/contentDistribution'
end

s.subspec 'tagSearch' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/tagSearch/**/*'
 ssp.dependency 'KalturaClient/Core'
end

s.subspec 'timeWarnerDistribution' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/timeWarnerDistribution/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/contentDistribution'
end

s.subspec 'uverseClickToOrderDistribution' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/uverseClickToOrderDistribution/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/contentDistribution'
end

s.subspec 'uverseDistribution' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/uverseDistribution/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/contentDistribution'
end

s.subspec 'varConsole' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/varConsole/**/*'
 ssp.dependency 'KalturaClient/Core'
end

s.subspec 'verizonVcastDistribution' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/verizonVcastDistribution/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/contentDistribution'
end

s.subspec 'virusScan' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/virusScan/**/*'
 ssp.dependency 'KalturaClient/Core'
end

s.subspec 'yahooDistribution' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/yahooDistribution/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/contentDistribution'
end

s.subspec 'youTubeDistribution' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/youTubeDistribution/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/contentDistribution'
end

s.subspec 'youtubeApiDistribution' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/youtubeApiDistribution/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/contentDistribution'
end

s.subspec 'abcScreenersWatermarkAccessControl' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/abcScreenersWatermarkAccessControl/**/*'
 ssp.dependency 'KalturaClient/Core'
end

s.subspec 'externalMedia' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/externalMedia/**/*'
 ssp.dependency 'KalturaClient/Core'
end

s.subspec 'drm' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/drm/**/*'
 ssp.dependency 'KalturaClient/Core'
end

s.subspec 'fairplay' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/fairplay/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/drm'
end

s.subspec 'widevine' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/widevine/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/drm'
end

s.subspec 'WebexDropFolder' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/WebexDropFolder/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/dropFolder'
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

s.subspec 'scheduledTask' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/scheduledTask/**/*'
 ssp.dependency 'KalturaClient/Core'
end

s.subspec 'scheduledTaskEventNotification' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/scheduledTaskEventNotification/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/scheduledTask'
 ssp.dependency 'KalturaClient/eventNotification'
end

s.subspec 'scheduledTaskMetadata' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/scheduledTaskMetadata/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/scheduledTask'
 ssp.dependency 'KalturaClient/metadata'
end

s.subspec 'scheduledTaskContentDistribution' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/scheduledTaskContentDistribution/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/scheduledTask'
 ssp.dependency 'KalturaClient/contentDistribution'
end

s.subspec 'bulkUploadFilter' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/bulkUploadFilter/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/bulkUpload'
end

s.subspec 'playReady' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/playReady/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/drm'
end

s.subspec 'tvinciDistribution' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/tvinciDistribution/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/contentDistribution'
end

s.subspec 'unicornDistribution' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/unicornDistribution/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/contentDistribution'
end

s.subspec 'eventCuePoint' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/eventCuePoint/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/cuePoint'
end

s.subspec 'integration' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/integration/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/metadata'
end

s.subspec 'exampleIntegration' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/exampleIntegration/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/integration'
end

s.subspec 'bpmEventNotificationIntegration' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/bpmEventNotificationIntegration/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/integration'
 ssp.dependency 'KalturaClient/businessProcessNotification'
end

s.subspec 'businessProcessNotification' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/businessProcessNotification/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/eventNotification'
end

s.subspec 'activitiBusinessProcessNotification' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/activitiBusinessProcessNotification/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/businessProcessNotification'
end

s.subspec 'quiz' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/quiz/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/cuePoint'
end

s.subspec 'forensicWatermark' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/forensicWatermark/**/*'
 ssp.dependency 'KalturaClient/Core'
end

s.subspec 'transcript' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/transcript/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/attachment'
end

s.subspec 'dexterIntegration' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/dexterIntegration/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/integration'
 ssp.dependency 'KalturaClient/voicebase'
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

s.subspec 'schedule' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/schedule/**/*'
 ssp.dependency 'KalturaClient/Core'
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

s.subspec 'viewHistory' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/viewHistory/**/*'
 ssp.dependency 'KalturaClient/Core'
end

s.subspec 'poll' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/poll/**/*'
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

s.default_subspec = 'Core'
end
