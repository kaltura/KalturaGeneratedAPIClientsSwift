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
 * This class was generated using exec.php
 * against an XML schema provided by Kaltura.
 * 
 * MANUAL CHANGES TO THIS CLASS WILL BE OVERWRITTEN.
 */
public enum DeliveryProfileType: String {
	case EDGE_CAST_HTTP = "edgeCast.EDGE_CAST_HTTP"
	case EDGE_CAST_RTMP = "edgeCast.EDGE_CAST_RTMP"
	case KONTIKI_HTTP = "kontiki.KONTIKI_HTTP"
	case VELOCIX_HDS = "velocix.VELOCIX_HDS"
	case VELOCIX_HLS = "velocix.VELOCIX_HLS"
	case APPLE_HTTP = "1"
	case HDS = "3"
	case HTTP = "4"
	case RTMP = "5"
	case RTSP = "6"
	case SILVER_LIGHT = "7"
	case AKAMAI_HLS_DIRECT = "10"
	case AKAMAI_HLS_MANIFEST = "11"
	case AKAMAI_HD = "12"
	case AKAMAI_HDS = "13"
	case AKAMAI_HTTP = "14"
	case AKAMAI_RTMP = "15"
	case AKAMAI_RTSP = "16"
	case AKAMAI_SS = "17"
	case GENERIC_HLS = "21"
	case GENERIC_HDS = "23"
	case GENERIC_HTTP = "24"
	case GENERIC_HLS_MANIFEST = "25"
	case GENERIC_HDS_MANIFEST = "26"
	case GENERIC_SS = "27"
	case GENERIC_RTMP = "28"
	case LEVEL3_HLS = "31"
	case LEVEL3_HTTP = "34"
	case LEVEL3_RTMP = "35"
	case LIMELIGHT_HTTP = "44"
	case LIMELIGHT_RTMP = "45"
	case LOCAL_PATH_APPLE_HTTP = "51"
	case LOCAL_PATH_HDS = "53"
	case LOCAL_PATH_HTTP = "54"
	case LOCAL_PATH_RTMP = "55"
	case VOD_PACKAGER_HLS = "61"
	case VOD_PACKAGER_HDS = "63"
	case VOD_PACKAGER_MSS = "67"
	case VOD_PACKAGER_DASH = "68"
	case LIVE_HLS = "1001"
	case LIVE_HDS = "1002"
	case LIVE_DASH = "1003"
	case LIVE_RTMP = "1005"
	case LIVE_HLS_TO_MULTICAST = "1006"
	case LIVE_PACKAGER_HLS = "1007"
	case LIVE_PACKAGER_HDS = "1008"
	case LIVE_PACKAGER_DASH = "1009"
	case LIVE_PACKAGER_MSS = "1010"
	case LIVE_AKAMAI_HDS = "1013"
}
