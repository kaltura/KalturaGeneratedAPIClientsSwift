// ===================================================================================================
//                           _  __     _ _
//                          | |/ /__ _| | |_ _  _ _ _ __ _
//                          | ' </ _` | |  _| || | '_/ _` |
//                          |_|\_\__,_|_|\__|\_,_|_| \__,_|
//
// This file is part of the Kaltura Collaborative Media Suite which allows users
// to do with audio, video, and animation what Wiki platfroms allow them to do with
// text.
//
// Copyright (C) 2006-2019  Kaltura Inc.
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Affero General Public License as
// published by the Free Software Foundation, either version 3 of the
// License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Affero General Public License for more details.
//
// You should have received a copy of the GNU Affero General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.
//
// @ignore
// ===================================================================================================
/**
 * This class was generated using generate.php
 * against an XML schema provided by Kaltura.
 * 
 * MANUAL CHANGES TO THIS CLASS WILL BE OVERWRITTEN.
 */
public enum BatchJobType: String {
	case CONVERT = "0"
	case PARSE_MULTI_LANGUAGE_CAPTION_ASSET = "caption.parsemultilanguagecaptionasset"
	case PARSE_CAPTION_ASSET = "captionSearch.parseCaptionAsset"
	case DISTRIBUTION_DELETE = "contentDistribution.DistributionDelete"
	case DISTRIBUTION_DISABLE = "contentDistribution.DistributionDisable"
	case DISTRIBUTION_ENABLE = "contentDistribution.DistributionEnable"
	case DISTRIBUTION_FETCH_REPORT = "contentDistribution.DistributionFetchReport"
	case DISTRIBUTION_SUBMIT = "contentDistribution.DistributionSubmit"
	case DISTRIBUTION_SYNC = "contentDistribution.DistributionSync"
	case DISTRIBUTION_UPDATE = "contentDistribution.DistributionUpdate"
	case DROP_FOLDER_CONTENT_PROCESSOR = "dropFolder.DropFolderContentProcessor"
	case DROP_FOLDER_WATCHER = "dropFolder.DropFolderWatcher"
	case EVENT_NOTIFICATION_HANDLER = "eventNotification.EventNotificationHandler"
	case INTEGRATION = "integration.Integration"
	case ENTRY_VENDOR_TASK_CSV = "reach.EntryVendorTasksCsv"
	case SYNC_REACH_CREDIT_TASK = "reach.SyncReachCreditTask"
	case SCHEDULED_TASK = "scheduledTask.ScheduledTask"
	case INDEX_TAGS = "tagSearch.IndexTagsByPrivacyContext"
	case TAG_RESOLVE = "tagSearch.TagResolve"
	case VIRUS_SCAN = "virusScan.VirusScan"
	case WIDEVINE_REPOSITORY_SYNC = "widevine.WidevineRepositorySync"
	case IMPORT = "1"
	case DELETE = "2"
	case FLATTEN = "3"
	case BULKUPLOAD = "4"
	case DVDCREATOR = "5"
	case DOWNLOAD = "6"
	case OOCONVERT = "7"
	case CONVERT_PROFILE = "10"
	case POSTCONVERT = "11"
	case EXTRACT_MEDIA = "14"
	case MAIL = "15"
	case NOTIFICATION = "16"
	case CLEANUP = "17"
	case SCHEDULER_HELPER = "18"
	case BULKDOWNLOAD = "19"
	case DB_CLEANUP = "20"
	case PROVISION_PROVIDE = "21"
	case CONVERT_COLLECTION = "22"
	case STORAGE_EXPORT = "23"
	case PROVISION_DELETE = "24"
	case STORAGE_DELETE = "25"
	case EMAIL_INGESTION = "26"
	case METADATA_IMPORT = "27"
	case METADATA_TRANSFORM = "28"
	case FILESYNC_IMPORT = "29"
	case CAPTURE_THUMB = "30"
	case DELETE_FILE = "31"
	case INDEX = "32"
	case MOVE_CATEGORY_ENTRIES = "33"
	case COPY = "34"
	case CONCAT = "35"
	case CONVERT_LIVE_SEGMENT = "36"
	case COPY_PARTNER = "37"
	case VALIDATE_LIVE_MEDIA_SERVERS = "38"
	case SYNC_CATEGORY_PRIVACY_CONTEXT = "39"
	case LIVE_REPORT_EXPORT = "40"
	case RECALCULATE_CACHE = "41"
	case LIVE_TO_VOD = "42"
	case COPY_CAPTIONS = "43"
	case CHUNKED_ENCODE_JOB_SCHEDULER = "44"
	case SERVER_NODE_MONITOR = "45"
	case USERS_CSV = "46"
	case CLIP_CONCAT = "47"
	case COPY_CUE_POINTS = "48"
	case EXPORT_CSV = "49"
	case REPORT_EXPORT = "50"
}
