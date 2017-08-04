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

open class CategoryUserFilter: CategoryUserBaseFilter {

	/**  Return the list of categoryUser that are not inherited from parent category -
	  only the direct categoryUsers.  */
	public var categoryDirectMembers: Bool? = nil
	/**  Free text search on user id or screen name  */
	public var freeText: String? = nil
	/**  Return a list of categoryUser that related to the userId in this field by groups  */
	public var relatedGroupsByUserId: String? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["categoryDirectMembers"] != nil {
			categoryDirectMembers = dict["categoryDirectMembers"] as? Bool
		}
		if dict["freeText"] != nil {
			freeText = dict["freeText"] as? String
		}
		if dict["relatedGroupsByUserId"] != nil {
			relatedGroupsByUserId = dict["relatedGroupsByUserId"] as? String
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(categoryDirectMembers != nil) {
			dict["categoryDirectMembers"] = categoryDirectMembers!
		}
		if(freeText != nil) {
			dict["freeText"] = freeText!
		}
		if(relatedGroupsByUserId != nil) {
			dict["relatedGroupsByUserId"] = relatedGroupsByUserId!
		}
		return dict
	}
}

