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
// Copyright (C) 2006-2021  Kaltura Inc.
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
public enum PartnerOrderBy: String {
	case ADMIN_EMAIL_ASC = "+adminEmail"
	case ADMIN_NAME_ASC = "+adminName"
	case CREATED_AT_ASC = "+createdAt"
	case ID_ASC = "+id"
	case NAME_ASC = "+name"
	case STATUS_ASC = "+status"
	case WEBSITE_ASC = "+website"
	case ADMIN_EMAIL_DESC = "-adminEmail"
	case ADMIN_NAME_DESC = "-adminName"
	case CREATED_AT_DESC = "-createdAt"
	case ID_DESC = "-id"
	case NAME_DESC = "-name"
	case STATUS_DESC = "-status"
	case WEBSITE_DESC = "-website"
}
