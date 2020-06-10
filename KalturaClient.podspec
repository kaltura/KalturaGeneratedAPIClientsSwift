Pod::Spec.new do |s|
s.name             = 'KalturaClient'
s.version          = '16.4.0'
s.summary          = 'KalturaClient.'
s.homepage         = 'https://github.com/kaltura/clients-generator/tree/master/sources/swift'
s.license          = { :type => 'AGPLv3', :text => 'AGPLv3' }
s.author           = { 'Kaltura' => 'community@kaltura.com' }
s.source           = { :git => 'https://github.com/kaltura/KalturaGeneratedAPIClientsSwift.git', :tag => s.version.to_s }
s.ios.deployment_target = '8.0'
s.source_files = 'KalturaClient/Classes/**/*'

 
s.subspec 'Core' do |sp|
    sp.source_files = 'KalturaClient/Classes/**/*'
    sp.dependency 'Log', '1.0'
end
s.subspec 'ActivitiBusinessProcessNotification' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/activitiBusinessProcessNotification/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/BusinessProcessNotification'
end

s.subspec 'AdCuePoint' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/adCuePoint/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/CuePoint'
end

s.subspec 'AdminConsole' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/adminConsole/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/FileSync'
end

s.subspec 'Annotation' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/annotation/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/CuePoint'
end

s.subspec 'Aspera' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/aspera/**/*'
 ssp.dependency 'KalturaClient/Core'
end

s.subspec 'Attachment' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/attachment/**/*'
 ssp.dependency 'KalturaClient/Core'
end

s.subspec 'Audit' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/audit/**/*'
 ssp.dependency 'KalturaClient/Core'
end

s.subspec 'AvnDistribution' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/avnDistribution/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/ContentDistribution'
end

s.subspec 'Beacon' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/beacon/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/ElasticSearch'
end

s.subspec 'BpmEventNotificationIntegration' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/bpmEventNotificationIntegration/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/Integration'
 ssp.dependency 'KalturaClient/BusinessProcessNotification'
end

s.subspec 'BulkUpload' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/bulkUpload/**/*'
 ssp.dependency 'KalturaClient/Core'
end

s.subspec 'BulkUploadCsv' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/bulkUploadCsv/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/BulkUpload'
end

s.subspec 'BulkUploadFilter' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/bulkUploadFilter/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/BulkUpload'
 ssp.dependency 'KalturaClient/BulkUploadXml'
end

s.subspec 'ScheduleBulkUpload' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/scheduleBulkUpload/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/BulkUploadCsv'
 ssp.dependency 'KalturaClient/Schedule'
end

s.subspec 'BulkUploadXml' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/bulkUploadXml/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/BulkUpload'
end

s.subspec 'BusinessProcessNotification' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/businessProcessNotification/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/EventNotification'
end

s.subspec 'Caption' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/caption/**/*'
 ssp.dependency 'KalturaClient/Core'
end

s.subspec 'CaptionSearch' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/captionSearch/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/Caption'
end

s.subspec 'Cielo24' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/cielo24/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/Integration'
 ssp.dependency 'KalturaClient/Transcript'
end

s.subspec 'CodeCuePoint' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/codeCuePoint/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/CuePoint'
end

s.subspec 'ComcastMrssDistribution' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/comcastMrssDistribution/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/ContentDistribution'
 ssp.dependency 'KalturaClient/Caption'
 ssp.dependency 'KalturaClient/CuePoint'
end

s.subspec 'Conference' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/conference/**/*'
 ssp.dependency 'KalturaClient/Core'
end

s.subspec 'ConfMaps' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/confMaps/**/*'
 ssp.dependency 'KalturaClient/Core'
end

s.subspec 'ContentDistribution' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/contentDistribution/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/Metadata'
end

s.subspec 'CrossKalturaDistribution' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/crossKalturaDistribution/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/ContentDistribution'
end

s.subspec 'CuePoint' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/cuePoint/**/*'
 ssp.dependency 'KalturaClient/Core'
end

s.subspec 'DailymotionDistribution' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/dailymotionDistribution/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/ContentDistribution'
end

s.subspec 'Document' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/document/**/*'
 ssp.dependency 'KalturaClient/Core'
end

s.subspec 'DoubleClickDistribution' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/doubleClickDistribution/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/ContentDistribution'
 ssp.dependency 'KalturaClient/CuePoint'
end

s.subspec 'Drm' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/drm/**/*'
 ssp.dependency 'KalturaClient/Core'
end

s.subspec 'DropFolder' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/dropFolder/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/Metadata'
end

s.subspec 'ScheduleDropFolder' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/scheduleDropFolder/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/ScheduleBulkUpload'
 ssp.dependency 'KalturaClient/DropFolder'
end

s.subspec 'DropFolderXmlBulkUpload' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/dropFolderXmlBulkUpload/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/BulkUploadXml'
 ssp.dependency 'KalturaClient/DropFolder'
end

s.subspec 'ElasticSearch' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/elasticSearch/**/*'
 ssp.dependency 'KalturaClient/Core'
end

s.subspec 'EmailNotification' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/emailNotification/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/EventNotification'
end

s.subspec 'EventCuePoint' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/eventCuePoint/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/CuePoint'
end

s.subspec 'EventNotification' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/eventNotification/**/*'
 ssp.dependency 'KalturaClient/Core'
end

s.subspec 'ExternalMedia' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/externalMedia/**/*'
 ssp.dependency 'KalturaClient/Core'
end

s.subspec 'FacebookDistribution' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/facebookDistribution/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/ContentDistribution'
end

s.subspec 'Fairplay' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/fairplay/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/Drm'
end

s.subspec 'FeedDropFolder' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/FeedDropFolder/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/DropFolder'
end

s.subspec 'FileSync' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/fileSync/**/*'
 ssp.dependency 'KalturaClient/Core'
end

s.subspec 'FreewheelDistribution' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/freewheelDistribution/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/ContentDistribution'
end

s.subspec 'FreewheelGenericDistribution' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/freewheelGenericDistribution/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/ContentDistribution'
 ssp.dependency 'KalturaClient/CuePoint'
end

s.subspec 'FtpDistribution' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/ftpDistribution/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/ContentDistribution'
end

s.subspec 'Group' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/group/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/ElasticSearch'
end

s.subspec 'HttpNotification' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/httpNotification/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/EventNotification'
end

s.subspec 'HuluDistribution' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/huluDistribution/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/ContentDistribution'
 ssp.dependency 'KalturaClient/CuePoint'
end

s.subspec 'IdeticDistribution' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/ideticDistribution/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/ContentDistribution'
end

s.subspec 'Integration' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/integration/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/Metadata'
end

s.subspec 'Interactivity' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/interactivity/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/FileSync'
end

s.subspec 'Kontiki' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/kontiki/**/*'
 ssp.dependency 'KalturaClient/Core'
end

s.subspec 'Like' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/like/**/*'
 ssp.dependency 'KalturaClient/Core'
end

s.subspec 'LiveCluster' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/liveCluster/**/*'
 ssp.dependency 'KalturaClient/Core'
end

s.subspec 'Metadata' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/metadata/**/*'
 ssp.dependency 'KalturaClient/Core'
end

s.subspec 'MetroPcsDistribution' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/metroPcsDistribution/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/ContentDistribution'
end

s.subspec 'MsnDistribution' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/msnDistribution/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/ContentDistribution'
end

s.subspec 'PlayReady' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/playReady/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/Drm'
end

s.subspec 'PodcastDistribution' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/podcastDistribution/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/ContentDistribution'
end

s.subspec 'Poll' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/poll/**/*'
 ssp.dependency 'KalturaClient/Core'
end

s.subspec 'PushNotification' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/pushNotification/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/EventNotification'
end

s.subspec 'QuickPlayDistribution' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/quickPlayDistribution/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/ContentDistribution'
end

s.subspec 'Quiz' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/quiz/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/CuePoint'
end

s.subspec 'Rating' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/rating/**/*'
 ssp.dependency 'KalturaClient/Core'
end

s.subspec 'Reach' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/reach/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/EventNotification'
 ssp.dependency 'KalturaClient/BulkUpload'
end

s.subspec 'Registration' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/registration/**/*'
 ssp.dependency 'KalturaClient/Core'
end

s.subspec 'Schedule' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/schedule/**/*'
 ssp.dependency 'KalturaClient/Core'
end

s.subspec 'ScheduledTask' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/scheduledTask/**/*'
 ssp.dependency 'KalturaClient/Core'
end

s.subspec 'ScheduledTaskContentDistribution' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/scheduledTaskContentDistribution/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/ScheduledTask'
 ssp.dependency 'KalturaClient/ContentDistribution'
end

s.subspec 'ScheduledTaskEventNotification' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/scheduledTaskEventNotification/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/ScheduledTask'
 ssp.dependency 'KalturaClient/EventNotification'
end

s.subspec 'ScheduledTaskMetadata' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/scheduledTaskMetadata/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/ScheduledTask'
 ssp.dependency 'KalturaClient/Metadata'
end

s.subspec 'SearchHistory' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/searchHistory/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/ElasticSearch'
end

s.subspec 'ShortLink' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/shortLink/**/*'
 ssp.dependency 'KalturaClient/Core'
end

s.subspec 'Sip' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/sip/**/*'
 ssp.dependency 'KalturaClient/Core'
end

s.subspec 'Sso' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/sso/**/*'
 ssp.dependency 'KalturaClient/Core'
end

s.subspec 'SystemPartner' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/systemPartner/**/*'
 ssp.dependency 'KalturaClient/Core'
end

s.subspec 'TagSearch' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/tagSearch/**/*'
 ssp.dependency 'KalturaClient/Core'
end

s.subspec 'ThumbCuePoint' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/thumbCuePoint/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/CuePoint'
end

s.subspec 'Thumbnail' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/thumbnail/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/FileSync'
end

s.subspec 'Transcript' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/transcript/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/Attachment'
end

s.subspec 'UnicornDistribution' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/unicornDistribution/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/ContentDistribution'
end

s.subspec 'VarConsole' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/varConsole/**/*'
 ssp.dependency 'KalturaClient/Core'
end

s.subspec 'Velocix' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/velocix/**/*'
 ssp.dependency 'KalturaClient/Core'
end

s.subspec 'Vendor' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/vendor/**/*'
 ssp.dependency 'KalturaClient/Core'
end

s.subspec 'ViewHistory' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/viewHistory/**/*'
 ssp.dependency 'KalturaClient/Core'
end

s.subspec 'VirusScan' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/virusScan/**/*'
 ssp.dependency 'KalturaClient/Core'
end

s.subspec 'Voicebase' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/voicebase/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/Integration'
 ssp.dependency 'KalturaClient/Transcript'
end

s.subspec 'WatchLater' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/watchLater/**/*'
 ssp.dependency 'KalturaClient/Core'
end

s.subspec 'WebexDropFolder' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/WebexDropFolder/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/DropFolder'
end

s.subspec 'Widevine' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/widevine/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/Drm'
end

s.subspec 'Wowza' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/wowza/**/*'
 ssp.dependency 'KalturaClient/Core'
end

s.subspec 'YahooDistribution' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/yahooDistribution/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/ContentDistribution'
end

s.subspec 'YoutubeApiDistribution' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/youtubeApiDistribution/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/ContentDistribution'
end

s.subspec 'YouTubeDistribution' do |ssp|
 ssp.source_files = 'KalturaClient/Plugins/youTubeDistribution/**/*'
 ssp.dependency 'KalturaClient/Core'
 ssp.dependency 'KalturaClient/ContentDistribution'
end

s.default_subspec = 'Core'
end
