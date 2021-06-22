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
// Copyright (C) 2006-2021  Kaltura Inc.
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
public enum EntryVendorTaskOrderBy: String {
	case CREATED_AT_ASC = "+createdAt"
	case EXPECTED_FINISH_TIME_ASC = "+expectedFinishTime"
	case FINISH_TIME_ASC = "+finishTime"
	case ID_ASC = "+id"
	case PRICE_ASC = "+price"
	case QUEUE_TIME_ASC = "+queueTime"
	case STATUS_ASC = "+status"
	case UPDATED_AT_ASC = "+updatedAt"
	case CREATED_AT_DESC = "-createdAt"
	case EXPECTED_FINISH_TIME_DESC = "-expectedFinishTime"
	case FINISH_TIME_DESC = "-finishTime"
	case ID_DESC = "-id"
	case PRICE_DESC = "-price"
	case QUEUE_TIME_DESC = "-queueTime"
	case STATUS_DESC = "-status"
	case UPDATED_AT_DESC = "-updatedAt"
}
