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
// Copyright (C) 2006-2017  Kaltura Inc.
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
public enum EventNotificationEventType: String {
	case INTEGRATION_JOB_CLOSED = "integrationEventNotifications.INTEGRATION_JOB_CLOSED"
	case BATCH_JOB_STATUS = "1"
	case OBJECT_ADDED = "2"
	case OBJECT_CHANGED = "3"
	case OBJECT_COPIED = "4"
	case OBJECT_CREATED = "5"
	case OBJECT_DATA_CHANGED = "6"
	case OBJECT_DELETED = "7"
	case OBJECT_ERASED = "8"
	case OBJECT_READY_FOR_REPLACMENT = "9"
	case OBJECT_SAVED = "10"
	case OBJECT_UPDATED = "11"
	case OBJECT_REPLACED = "12"
	case OBJECT_READY_FOR_INDEX = "13"
}
