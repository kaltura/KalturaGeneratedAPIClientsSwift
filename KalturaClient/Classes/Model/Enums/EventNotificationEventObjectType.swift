// ===================================================================================================
//                           _  __     _ _
//                          | |/ /__ _| | |_ _  _ _ _ __ _
//                          | ' </ _` | |  _| || | '_/ _` |
//                          |_|\_\__,_|_|\__|\_,_|_| \__,_|
//
// This file is part of the Kaltura Collaborative Media Suite which allows users
// to do with audio, video, and animation what Wiki platforms allow them to do with
// text.
//
// Copyright (C) 2006-2023  Kaltura Inc.
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
public enum EventNotificationEventObjectType: String {
	case AD_CUE_POINT = "adCuePointEventNotifications.AdCuePoint"
	case ANNOTATION = "annotationEventNotifications.Annotation"
	case ATTACHMENT_ASSET = "attachmentAssetEventNotifications.AttachmentAsset"
	case CAPTION_ASSET = "captionAssetEventNotifications.CaptionAsset"
	case CODE_CUE_POINT = "codeCuePointEventNotifications.CodeCuePoint"
	case DISTRIBUTION_PROFILE = "contentDistributionEventNotifications.DistributionProfile"
	case ENTRY_DISTRIBUTION = "contentDistributionEventNotifications.EntryDistribution"
	case CUE_POINT = "cuePointEventNotifications.CuePoint"
	case DROP_FOLDER = "dropFolderEventNotifications.DropFolder"
	case DROP_FOLDER_FILE = "dropFolderEventNotifications.DropFolderFile"
	case METADATA = "metadataEventNotifications.Metadata"
	case TRANSCRIPT_ASSET = "transcriptAssetEventNotifications.TranscriptAsset"
	case ENTRY = "1"
	case CATEGORY = "2"
	case ASSET = "3"
	case FLAVORASSET = "4"
	case THUMBASSET = "5"
	case KUSER = "8"
	case ACCESSCONTROL = "9"
	case BATCHJOB = "10"
	case BULKUPLOADRESULT = "11"
	case CATEGORYKUSER = "12"
	case CONVERSIONPROFILE2 = "14"
	case FLAVORPARAMS = "15"
	case FLAVORPARAMSCONVERSIONPROFILE = "16"
	case FLAVORPARAMSOUTPUT = "17"
	case GENERICSYNDICATIONFEED = "18"
	case KUSERTOUSERROLE = "19"
	case PARTNER = "20"
	case PERMISSION = "21"
	case PERMISSIONITEM = "22"
	case PERMISSIONTOPERMISSIONITEM = "23"
	case SCHEDULER = "24"
	case SCHEDULERCONFIG = "25"
	case SCHEDULERSTATUS = "26"
	case SCHEDULERWORKER = "27"
	case STORAGEPROFILE = "28"
	case SYNDICATIONFEED = "29"
	case THUMBPARAMS = "31"
	case THUMBPARAMSOUTPUT = "32"
	case UPLOADTOKEN = "33"
	case USERLOGINDATA = "34"
	case USERROLE = "35"
	case WIDGET = "36"
	case CATEGORYENTRY = "37"
	case LIVE_STREAM = "38"
	case SERVER_NODE = "39"
	case ENTRY_SERVER_NODE = "40"
	case REACH_PROFILE = "41"
	case ENTRY_VENDOR_TASK = "42"
}
