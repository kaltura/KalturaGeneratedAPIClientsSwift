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
// Copyright (C) 2006-2020  Kaltura Inc.
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
public enum AuditTrailObjectType: String {
	case BATCH_JOB = "BatchJob"
	case EMAIL_INGESTION_PROFILE = "EmailIngestionProfile"
	case FILE_SYNC = "FileSync"
	case KSHOW_KUSER = "KshowKuser"
	case METADATA = "Metadata"
	case METADATA_PROFILE = "MetadataProfile"
	case PARTNER = "Partner"
	case PERMISSION = "Permission"
	case UPLOAD_TOKEN = "UploadToken"
	case USER_LOGIN_DATA = "UserLoginData"
	case USER_ROLE = "UserRole"
	case ACCESS_CONTROL = "accessControl"
	case CATEGORY = "category"
	case CONVERSION_PROFILE_2 = "conversionProfile2"
	case ENTRY = "entry"
	case FLAVOR_ASSET = "flavorAsset"
	case FLAVOR_PARAMS = "flavorParams"
	case FLAVOR_PARAMS_CONVERSION_PROFILE = "flavorParamsConversionProfile"
	case FLAVOR_PARAMS_OUTPUT = "flavorParamsOutput"
	case KSHOW = "kshow"
	case KUSER = "kuser"
	case MEDIA_INFO = "mediaInfo"
	case MODERATION = "moderation"
	case ROUGHCUT = "roughcutEntry"
	case SYNDICATION = "syndicationFeed"
	case THUMBNAIL_ASSET = "thumbAsset"
	case THUMBNAIL_PARAMS = "thumbParams"
	case THUMBNAIL_PARAMS_OUTPUT = "thumbParamsOutput"
	case UI_CONF = "uiConf"
	case WIDGET = "widget"
}
