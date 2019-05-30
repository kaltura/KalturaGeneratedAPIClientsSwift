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
public enum MailType: String {
	case MAIL_TYPE_KALTURA_NEWSLETTER = "10"
	case MAIL_TYPE_ADDED_TO_FAVORITES = "11"
	case MAIL_TYPE_ADDED_TO_CLIP_FAVORITES = "12"
	case MAIL_TYPE_NEW_COMMENT_IN_PROFILE = "13"
	case MAIL_TYPE_CLIP_ADDED_YOUR_KALTURA = "20"
	case MAIL_TYPE_VIDEO_ADDED = "21"
	case MAIL_TYPE_ROUGHCUT_CREATED = "22"
	case MAIL_TYPE_ADDED_KALTURA_TO_YOUR_FAVORITES = "23"
	case MAIL_TYPE_NEW_COMMENT_IN_KALTURA = "24"
	case MAIL_TYPE_CLIP_ADDED = "30"
	case MAIL_TYPE_VIDEO_CREATED = "31"
	case MAIL_TYPE_ADDED_KALTURA_TO_HIS_FAVORITES = "32"
	case MAIL_TYPE_NEW_COMMENT_IN_KALTURA_YOU_CONTRIBUTED = "33"
	case MAIL_TYPE_CLIP_CONTRIBUTED = "40"
	case MAIL_TYPE_ROUGHCUT_CREATED_SUBSCRIBED = "41"
	case MAIL_TYPE_ADDED_KALTURA_TO_HIS_FAVORITES_SUBSCRIBED = "42"
	case MAIL_TYPE_NEW_COMMENT_IN_KALTURA_YOU_SUBSCRIBED = "43"
	case MAIL_TYPE_REGISTER_CONFIRM = "50"
	case MAIL_TYPE_PASSWORD_RESET = "51"
	case MAIL_TYPE_LOGIN_MAIL_RESET = "52"
	case MAIL_TYPE_REGISTER_CONFIRM_VIDEO_SERVICE = "54"
	case MAIL_TYPE_VIDEO_READY = "60"
	case MAIL_TYPE_VIDEO_IS_READY = "62"
	case MAIL_TYPE_BULK_DOWNLOAD_READY = "63"
	case MAIL_TYPE_BULKUPLOAD_FINISHED = "64"
	case MAIL_TYPE_BULKUPLOAD_FAILED = "65"
	case MAIL_TYPE_BULKUPLOAD_ABORTED = "66"
	case MAIL_TYPE_NOTIFY_ERR = "70"
	case MAIL_TYPE_ACCOUNT_UPGRADE_CONFIRM = "80"
	case MAIL_TYPE_VIDEO_SERVICE_NOTICE = "81"
	case MAIL_TYPE_VIDEO_SERVICE_NOTICE_LIMIT_REACHED = "82"
	case MAIL_TYPE_VIDEO_SERVICE_NOTICE_ACCOUNT_LOCKED = "83"
	case MAIL_TYPE_VIDEO_SERVICE_NOTICE_ACCOUNT_DELETED = "84"
	case MAIL_TYPE_VIDEO_SERVICE_NOTICE_UPGRADE_OFFER = "85"
	case MAIL_TYPE_ACCOUNT_REACTIVE_CONFIRM = "86"
	case MAIL_TYPE_SYSTEM_USER_RESET_PASSWORD = "110"
	case MAIL_TYPE_SYSTEM_USER_RESET_PASSWORD_SUCCESS = "111"
	case MAIL_TYPE_SYSTEM_USER_NEW_PASSWORD = "112"
	case MAIL_TYPE_SYSTEM_USER_CREDENTIALS_SAVED = "113"
	case MAIL_TYPE_LIVE_REPORT_EXPORT_SUCCESS = "130"
	case MAIL_TYPE_LIVE_REPORT_EXPORT_FAILURE = "131"
	case MAIL_TYPE_LIVE_REPORT_EXPORT_ABORT = "132"
	case MAIL_TYPE_USERS_CSV = "133"
	case MAIL_TYPE_OBJECTS_CSV = "135"
	case MAIL_TYPE_REPORT_EXPORT_SUCCESS = "136"
	case MAIL_TYPE_REPORT_EXPORT_FAILURE = "137"
	case MAIL_TYPE_REPORT_EXPORT_ABORT = "138"
	case MAIL_TYPE_SIP_FAILURE = "139"
}
