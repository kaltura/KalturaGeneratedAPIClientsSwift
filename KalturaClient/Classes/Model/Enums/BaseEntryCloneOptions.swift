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
public enum BaseEntryCloneOptions: String {
	case USERS = "1"
	case CATEGORIES = "2"
	case CHILD_ENTRIES = "3"
	case ACCESS_CONTROL = "4"
	case METADATA = "5"
	case FLAVORS = "6"
	case CAPTIONS = "7"
	case AD_CUE_POINTS = "adCuePoint.AD_CUE_POINTS"
	case ANNOTATION_CUE_POINTS = "annotation.ANNOTATION_CUE_POINTS"
	case CODE_CUE_POINTS = "codeCuePoint.CODE_CUE_POINTS"
	case SESSION_CUE_POINTS = "sessionCuePoint.SESSION_CUE_POINTS"
	case THUMB_CUE_POINTS = "thumbCuePoint.THUMB_CUE_POINTS"
}
