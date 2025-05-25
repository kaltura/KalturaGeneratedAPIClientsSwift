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
public enum DropFolderType: String {
	case LOCAL = "1"
	case FTP = "2"
	case SCP = "3"
	case SFTP = "4"
	case S3 = "6"
	case AP_FEED = "ApFeedDropFolder.AP_FEED"
	case FEED = "FeedDropFolder.FEED"
	case MS_TEAMS = "MicrosoftTeamsDropFolder.MS_TEAMS"
	case S3DROPFOLDER = "S3DropFolder.S3DROPFOLDER"
	case TR_RDS_COMPANY = "TrRdsSyncDropFolder.TR_RDS_COMPANY"
	case TR_RDS_TMCTERM = "TrRdsSyncDropFolder.TR_RDS_TMCTERM"
	case WEBEX_API = "WebexAPIDropFolder.WEBEX_API"
	case WEBEX = "WebexDropFolder.WEBEX"
	case ZOOM = "ZoomDropFolder.ZOOM"
}
