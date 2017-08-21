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
public enum StatsKmcEventType: Int {
	case CONTENT_PAGE_VIEW = 1001
	case CONTENT_ADD_PLAYLIST = 1010
	case CONTENT_EDIT_PLAYLIST = 1011
	case CONTENT_DELETE_PLAYLIST = 1012
	case CONTENT_EDIT_ENTRY = 1013
	case CONTENT_CHANGE_THUMBNAIL = 1014
	case CONTENT_ADD_TAGS = 1015
	case CONTENT_REMOVE_TAGS = 1016
	case CONTENT_ADD_ADMIN_TAGS = 1017
	case CONTENT_REMOVE_ADMIN_TAGS = 1018
	case CONTENT_DOWNLOAD = 1019
	case CONTENT_APPROVE_MODERATION = 1020
	case CONTENT_REJECT_MODERATION = 1021
	case CONTENT_BULK_UPLOAD = 1022
	case CONTENT_ADMIN_KCW_UPLOAD = 1023
	case ACCOUNT_CHANGE_PARTNER_INFO = 1030
	case ACCOUNT_CHANGE_LOGIN_INFO = 1031
	case ACCOUNT_CONTACT_US_USAGE = 1032
	case ACCOUNT_UPDATE_SERVER_SETTINGS = 1033
	case ACCOUNT_ACCOUNT_OVERVIEW = 1034
	case ACCOUNT_ACCESS_CONTROL = 1035
	case ACCOUNT_TRANSCODING_SETTINGS = 1036
	case ACCOUNT_ACCOUNT_UPGRADE = 1037
	case ACCOUNT_SAVE_SERVER_SETTINGS = 1038
	case ACCOUNT_ACCESS_CONTROL_DELETE = 1039
	case ACCOUNT_SAVE_TRANSCODING_SETTINGS = 1040
	case LOGIN = 1041
	case DASHBOARD_IMPORT_CONTENT = 1042
	case DASHBOARD_UPDATE_CONTENT = 1043
	case DASHBOARD_ACCOUNT_CONTACT_US = 1044
	case DASHBOARD_VIEW_REPORTS = 1045
	case DASHBOARD_EMBED_PLAYER = 1046
	case DASHBOARD_EMBED_PLAYLIST = 1047
	case DASHBOARD_CUSTOMIZE_PLAYERS = 1048
	case APP_STUDIO_NEW_PLAYER_SINGLE_VIDEO = 1050
	case APP_STUDIO_NEW_PLAYER_PLAYLIST = 1051
	case APP_STUDIO_NEW_PLAYER_MULTI_TAB_PLAYLIST = 1052
	case APP_STUDIO_EDIT_PLAYER_SINGLE_VIDEO = 1053
	case APP_STUDIO_EDIT_PLAYER_PLAYLIST = 1054
	case APP_STUDIO_EDIT_PLAYER_MULTI_TAB_PLAYLIST = 1055
	case APP_STUDIO_DUPLICATE_PLAYER = 1056
	case CONTENT_CONTENT_GO_TO_PAGE = 1057
	case CONTENT_DELETE_ITEM = 1058
	case CONTENT_DELETE_MIX = 1059
	case REPORTS_AND_ANALYTICS_BANDWIDTH_USAGE_TAB = 1070
	case REPORTS_AND_ANALYTICS_CONTENT_REPORTS_TAB = 1071
	case REPORTS_AND_ANALYTICS_USERS_AND_COMMUNITY_REPORTS_TAB = 1072
	case REPORTS_AND_ANALYTICS_TOP_CONTRIBUTORS = 1073
	case REPORTS_AND_ANALYTICS_MAP_OVERLAYS = 1074
	case REPORTS_AND_ANALYTICS_TOP_SYNDICATIONS = 1075
	case REPORTS_AND_ANALYTICS_TOP_CONTENT = 1076
	case REPORTS_AND_ANALYTICS_CONTENT_DROPOFF = 1077
	case REPORTS_AND_ANALYTICS_CONTENT_INTERACTIONS = 1078
	case REPORTS_AND_ANALYTICS_CONTENT_CONTRIBUTIONS = 1079
	case REPORTS_AND_ANALYTICS_VIDEO_DRILL_DOWN = 1080
	case REPORTS_AND_ANALYTICS_CONTENT_DRILL_DOWN_INTERACTION = 1081
	case REPORTS_AND_ANALYTICS_CONTENT_CONTRIBUTIONS_DRILLDOWN = 1082
	case REPORTS_AND_ANALYTICS_VIDEO_DRILL_DOWN_DROPOFF = 1083
	case REPORTS_AND_ANALYTICS_MAP_OVERLAYS_DRILLDOWN = 1084
	case REPORTS_AND_ANALYTICS_TOP_SYNDICATIONS_DRILL_DOWN = 1085
	case REPORTS_AND_ANALYTICS_BANDWIDTH_USAGE_VIEW_MONTHLY = 1086
	case REPORTS_AND_ANALYTICS_BANDWIDTH_USAGE_VIEW_YEARLY = 1087
	case CONTENT_ENTRY_DRILLDOWN = 1088
	case CONTENT_OPEN_PREVIEW_AND_EMBED = 1089
}
