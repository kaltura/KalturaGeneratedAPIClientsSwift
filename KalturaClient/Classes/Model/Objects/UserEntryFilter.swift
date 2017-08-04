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

open class UserEntryFilter: UserEntryBaseFilter {

	public var userIdEqualCurrent: Bool? = nil
	public var isAnonymous: Bool? = nil
	public var privacyContextEqual: String? = nil
	public var privacyContextIn: String? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["userIdEqualCurrent"] != nil {
			userIdEqualCurrent = dict["userIdEqualCurrent"] as? Bool
		}
		if dict["isAnonymous"] != nil {
			isAnonymous = dict["isAnonymous"] as? Bool
		}
		if dict["privacyContextEqual"] != nil {
			privacyContextEqual = dict["privacyContextEqual"] as? String
		}
		if dict["privacyContextIn"] != nil {
			privacyContextIn = dict["privacyContextIn"] as? String
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(userIdEqualCurrent != nil) {
			dict["userIdEqualCurrent"] = userIdEqualCurrent!
		}
		if(isAnonymous != nil) {
			dict["isAnonymous"] = isAnonymous!
		}
		if(privacyContextEqual != nil) {
			dict["privacyContextEqual"] = privacyContextEqual!
		}
		if(privacyContextIn != nil) {
			dict["privacyContextIn"] = privacyContextIn!
		}
		return dict
	}
}

