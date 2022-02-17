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
// Copyright (C) 2006-2022  Kaltura Inc.
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
public enum StatsEventType: Int {
	case WIDGET_LOADED = 1
	case MEDIA_LOADED = 2
	case PLAY = 3
	case PLAY_REACHED_25 = 4
	case PLAY_REACHED_50 = 5
	case PLAY_REACHED_75 = 6
	case PLAY_REACHED_100 = 7
	case OPEN_EDIT = 8
	case OPEN_VIRAL = 9
	case OPEN_DOWNLOAD = 10
	case OPEN_REPORT = 11
	case BUFFER_START = 12
	case BUFFER_END = 13
	case OPEN_FULL_SCREEN = 14
	case CLOSE_FULL_SCREEN = 15
	case REPLAY = 16
	case SEEK = 17
	case OPEN_UPLOAD = 18
	case SAVE_PUBLISH = 19
	case CLOSE_EDITOR = 20
	case PRE_BUMPER_PLAYED = 21
	case POST_BUMPER_PLAYED = 22
	case BUMPER_CLICKED = 23
	case PREROLL_STARTED = 24
	case MIDROLL_STARTED = 25
	case POSTROLL_STARTED = 26
	case OVERLAY_STARTED = 27
	case PREROLL_CLICKED = 28
	case MIDROLL_CLICKED = 29
	case POSTROLL_CLICKED = 30
	case OVERLAY_CLICKED = 31
	case PREROLL_25 = 32
	case PREROLL_50 = 33
	case PREROLL_75 = 34
	case MIDROLL_25 = 35
	case MIDROLL_50 = 36
	case MIDROLL_75 = 37
	case POSTROLL_25 = 38
	case POSTROLL_50 = 39
	case POSTROLL_75 = 40
}
