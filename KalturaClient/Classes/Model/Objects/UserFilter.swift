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

open class UserFilter: UserBaseFilter {

	public var idOrScreenNameStartsWith: String? = nil
	public var idEqual: String? = nil
	public var idIn: String? = nil
	public var loginEnabledEqual: Bool? = nil
	public var roleIdEqual: String? = nil
	public var roleIdsEqual: String? = nil
	public var roleIdsIn: String? = nil
	public var firstNameOrLastNameStartsWith: String? = nil
	/**  Permission names filter expression  */
	public var permissionNamesMultiLikeOr: String? = nil
	/**  Permission names filter expression  */
	public var permissionNamesMultiLikeAnd: String? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["idOrScreenNameStartsWith"] != nil {
			idOrScreenNameStartsWith = dict["idOrScreenNameStartsWith"] as? String
		}
		if dict["idEqual"] != nil {
			idEqual = dict["idEqual"] as? String
		}
		if dict["idIn"] != nil {
			idIn = dict["idIn"] as? String
		}
		if dict["loginEnabledEqual"] != nil {
			loginEnabledEqual = dict["loginEnabledEqual"] as? Bool
		}
		if dict["roleIdEqual"] != nil {
			roleIdEqual = dict["roleIdEqual"] as? String
		}
		if dict["roleIdsEqual"] != nil {
			roleIdsEqual = dict["roleIdsEqual"] as? String
		}
		if dict["roleIdsIn"] != nil {
			roleIdsIn = dict["roleIdsIn"] as? String
		}
		if dict["firstNameOrLastNameStartsWith"] != nil {
			firstNameOrLastNameStartsWith = dict["firstNameOrLastNameStartsWith"] as? String
		}
		if dict["permissionNamesMultiLikeOr"] != nil {
			permissionNamesMultiLikeOr = dict["permissionNamesMultiLikeOr"] as? String
		}
		if dict["permissionNamesMultiLikeAnd"] != nil {
			permissionNamesMultiLikeAnd = dict["permissionNamesMultiLikeAnd"] as? String
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(idOrScreenNameStartsWith != nil) {
			dict["idOrScreenNameStartsWith"] = idOrScreenNameStartsWith!
		}
		if(idEqual != nil) {
			dict["idEqual"] = idEqual!
		}
		if(idIn != nil) {
			dict["idIn"] = idIn!
		}
		if(loginEnabledEqual != nil) {
			dict["loginEnabledEqual"] = loginEnabledEqual!
		}
		if(roleIdEqual != nil) {
			dict["roleIdEqual"] = roleIdEqual!
		}
		if(roleIdsEqual != nil) {
			dict["roleIdsEqual"] = roleIdsEqual!
		}
		if(roleIdsIn != nil) {
			dict["roleIdsIn"] = roleIdsIn!
		}
		if(firstNameOrLastNameStartsWith != nil) {
			dict["firstNameOrLastNameStartsWith"] = firstNameOrLastNameStartsWith!
		}
		if(permissionNamesMultiLikeOr != nil) {
			dict["permissionNamesMultiLikeOr"] = permissionNamesMultiLikeOr!
		}
		if(permissionNamesMultiLikeAnd != nil) {
			dict["permissionNamesMultiLikeAnd"] = permissionNamesMultiLikeAnd!
		}
		return dict
	}
}

