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
// Copyright (C) 2006-2018  Kaltura Inc.
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
public enum ReportType: String {
	case QUIZ = "quiz.QUIZ"
	case QUIZ_AGGREGATE_BY_QUESTION = "quiz.QUIZ_AGGREGATE_BY_QUESTION"
	case QUIZ_USER_AGGREGATE_BY_QUESTION = "quiz.QUIZ_USER_AGGREGATE_BY_QUESTION"
	case QUIZ_USER_PERCENTAGE = "quiz.QUIZ_USER_PERCENTAGE"
	case TOP_CONTENT = "1"
	case CONTENT_DROPOFF = "2"
	case CONTENT_INTERACTIONS = "3"
	case MAP_OVERLAY = "4"
	case TOP_CONTRIBUTORS = "5"
	case TOP_SYNDICATION = "6"
	case CONTENT_CONTRIBUTIONS = "7"
	case USER_ENGAGEMENT = "11"
	case SPECIFIC_USER_ENGAGEMENT = "12"
	case USER_TOP_CONTENT = "13"
	case USER_CONTENT_DROPOFF = "14"
	case USER_CONTENT_INTERACTIONS = "15"
	case APPLICATIONS = "16"
	case USER_USAGE = "17"
	case SPECIFIC_USER_USAGE = "18"
	case VAR_USAGE = "19"
	case TOP_CREATORS = "20"
	case PLATFORMS = "21"
	case OPERATING_SYSTEM = "22"
	case BROWSERS = "23"
	case LIVE = "24"
	case TOP_PLAYBACK_CONTEXT = "25"
	case VPAAS_USAGE = "26"
	case ENTRY_USAGE = "27"
	case REACH_USAGE = "28"
	case TOP_CUSTOM_VAR1 = "29"
	case PARTNER_USAGE = "201"
}
