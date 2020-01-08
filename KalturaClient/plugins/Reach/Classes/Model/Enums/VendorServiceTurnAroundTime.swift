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
public enum VendorServiceTurnAroundTime: Int {
	case BEST_EFFORT = -1
	case IMMEDIATE = 0
	case THIRTY_MINUTES = 1800
	case TWO_HOURS = 7200
	case THREE_HOURS = 10800
	case SIX_HOURS = 21600
	case EIGHT_HOURS = 28800
	case TWELVE_HOURS = 43200
	case TWENTY_FOUR_HOURS = 86400
	case FORTY_EIGHT_HOURS = 172800
	case FOUR_DAYS = 345600
	case FIVE_DAYS = 432000
	case TEN_DAYS = 864000
}
