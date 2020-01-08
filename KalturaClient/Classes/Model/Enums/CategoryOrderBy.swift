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
// Copyright (C) 2006-2020  Kaltura Inc.
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
public enum CategoryOrderBy: String {
	case CREATED_AT_ASC = "+createdAt"
	case DEPTH_ASC = "+depth"
	case DIRECT_ENTRIES_COUNT_ASC = "+directEntriesCount"
	case DIRECT_SUB_CATEGORIES_COUNT_ASC = "+directSubCategoriesCount"
	case ENTRIES_COUNT_ASC = "+entriesCount"
	case FULL_NAME_ASC = "+fullName"
	case MEMBERS_COUNT_ASC = "+membersCount"
	case NAME_ASC = "+name"
	case PARTNER_SORT_VALUE_ASC = "+partnerSortValue"
	case UPDATED_AT_ASC = "+updatedAt"
	case CREATED_AT_DESC = "-createdAt"
	case DEPTH_DESC = "-depth"
	case DIRECT_ENTRIES_COUNT_DESC = "-directEntriesCount"
	case DIRECT_SUB_CATEGORIES_COUNT_DESC = "-directSubCategoriesCount"
	case ENTRIES_COUNT_DESC = "-entriesCount"
	case FULL_NAME_DESC = "-fullName"
	case MEMBERS_COUNT_DESC = "-membersCount"
	case NAME_DESC = "-name"
	case PARTNER_SORT_VALUE_DESC = "-partnerSortValue"
	case UPDATED_AT_DESC = "-updatedAt"
}
