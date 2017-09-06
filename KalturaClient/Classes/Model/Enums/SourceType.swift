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
public enum SourceType: String {
	case LIMELIGHT_LIVE = "limeLight.LIVE_STREAM"
	case VELOCIX_LIVE = "velocix.VELOCIX_LIVE"
	case FILE = "1"
	case WEBCAM = "2"
	case URL = "5"
	case SEARCH_PROVIDER = "6"
	case AKAMAI_LIVE = "29"
	case MANUAL_LIVE_STREAM = "30"
	case AKAMAI_UNIVERSAL_LIVE = "31"
	case LIVE_STREAM = "32"
	case LIVE_CHANNEL = "33"
	case RECORDED_LIVE = "34"
	case CLIP = "35"
	case KALTURA_RECORDED_LIVE = "36"
	case LECTURE_CAPTURE = "37"
	case LIVE_STREAM_ONTEXTDATA_CAPTIONS = "42"
}
