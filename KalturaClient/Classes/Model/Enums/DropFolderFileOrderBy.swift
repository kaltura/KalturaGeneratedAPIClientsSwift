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
public enum DropFolderFileOrderBy: String {
	case CREATED_AT_ASC = "+createdAt"
	case FILE_NAME_ASC = "+fileName"
	case FILE_SIZE_ASC = "+fileSize"
	case FILE_SIZE_LAST_SET_AT_ASC = "+fileSizeLastSetAt"
	case ID_ASC = "+id"
	case PARSED_FLAVOR_ASC = "+parsedFlavor"
	case PARSED_SLUG_ASC = "+parsedSlug"
	case UPDATED_AT_ASC = "+updatedAt"
	case CREATED_AT_DESC = "-createdAt"
	case FILE_NAME_DESC = "-fileName"
	case FILE_SIZE_DESC = "-fileSize"
	case FILE_SIZE_LAST_SET_AT_DESC = "-fileSizeLastSetAt"
	case ID_DESC = "-id"
	case PARSED_FLAVOR_DESC = "-parsedFlavor"
	case PARSED_SLUG_DESC = "-parsedSlug"
	case UPDATED_AT_DESC = "-updatedAt"
}
