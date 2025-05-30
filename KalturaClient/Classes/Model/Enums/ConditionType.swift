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
 * This class was generated using exec.php
 * against an XML schema provided by Kaltura.
 * 
 * MANUAL CHANGES TO THIS CLASS WILL BE OVERWRITTEN.
 */
public enum ConditionType: String {
	case AUTHENTICATED = "1"
	case COUNTRY = "2"
	case IP_ADDRESS = "3"
	case SITE = "4"
	case USER_AGENT = "5"
	case FIELD_MATCH = "6"
	case FIELD_COMPARE = "7"
	case ASSET_PROPERTIES_COMPARE = "8"
	case USER_ROLE = "9"
	case GEO_DISTANCE = "10"
	case OR_OPERATOR = "11"
	case HASH = "12"
	case DELIVERY_PROFILE = "13"
	case ACTIVE_EDGE_VALIDATE = "14"
	case ANONYMOUS_IP = "15"
	case ASSET_TYPE = "16"
	case BOOLEAN = "17"
	case HTTP_HEADER = "18"
	case ENTRY_SCHEDULED = "19"
	case ACTION_NAME = "20"
	case URL_AUTH_PARAMS = "21"
	case SESSION_TYPE = "22"
	case ABC_WATERMARK = "abcScreenersWatermarkAccessControl.abcWatermark"
	case EVENT_NOTIFICATION_FIELD = "eventNotification.BooleanField"
	case EVENT_NOTIFICATION_OBJECT_CHANGED = "eventNotification.ObjectChanged"
	case METADATA_FIELD_CHANGED = "metadata.FieldChanged"
	case METADATA_FIELD_COMPARE = "metadata.FieldCompare"
	case METADATA_FIELD_MATCH = "metadata.FieldMatch"
	case EVENT_CATEGORY_ENTRY = "reach.CategoryEntry"
}
