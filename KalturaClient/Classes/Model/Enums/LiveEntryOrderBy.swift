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
public enum LiveEntryOrderBy: String {
	case CREATED_AT_ASC = "+createdAt"
	case DURATION_ASC = "+duration"
	case END_DATE_ASC = "+endDate"
	case FIRST_BROADCAST_ASC = "+firstBroadcast"
	case LAST_BROADCAST_ASC = "+lastBroadcast"
	case LAST_PLAYED_AT_ASC = "+lastPlayedAt"
	case MEDIA_TYPE_ASC = "+mediaType"
	case MODERATION_COUNT_ASC = "+moderationCount"
	case NAME_ASC = "+name"
	case PARTNER_SORT_VALUE_ASC = "+partnerSortValue"
	case PLAYS_ASC = "+plays"
	case RANK_ASC = "+rank"
	case RECENT_ASC = "+recent"
	case START_DATE_ASC = "+startDate"
	case TOTAL_RANK_ASC = "+totalRank"
	case UPDATED_AT_ASC = "+updatedAt"
	case VIEWS_ASC = "+views"
	case WEIGHT_ASC = "+weight"
	case CREATED_AT_DESC = "-createdAt"
	case DURATION_DESC = "-duration"
	case END_DATE_DESC = "-endDate"
	case FIRST_BROADCAST_DESC = "-firstBroadcast"
	case LAST_BROADCAST_DESC = "-lastBroadcast"
	case LAST_PLAYED_AT_DESC = "-lastPlayedAt"
	case MEDIA_TYPE_DESC = "-mediaType"
	case MODERATION_COUNT_DESC = "-moderationCount"
	case NAME_DESC = "-name"
	case PARTNER_SORT_VALUE_DESC = "-partnerSortValue"
	case PLAYS_DESC = "-plays"
	case RANK_DESC = "-rank"
	case RECENT_DESC = "-recent"
	case START_DATE_DESC = "-startDate"
	case TOTAL_RANK_DESC = "-totalRank"
	case UPDATED_AT_DESC = "-updatedAt"
	case VIEWS_DESC = "-views"
	case WEIGHT_DESC = "-weight"
}
