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

open class CategoryUserBaseFilter: RelatedFilter {

	public var categoryIdEqual: Int? = nil
	public var categoryIdIn: String? = nil
	public var userIdEqual: String? = nil
	public var userIdIn: String? = nil
	public var permissionLevelEqual: CategoryUserPermissionLevel? = nil
	public var permissionLevelIn: String? = nil
	public var statusEqual: CategoryUserStatus? = nil
	public var statusIn: String? = nil
	public var createdAtGreaterThanOrEqual: Int? = nil
	public var createdAtLessThanOrEqual: Int? = nil
	public var updatedAtGreaterThanOrEqual: Int? = nil
	public var updatedAtLessThanOrEqual: Int? = nil
	public var updateMethodEqual: UpdateMethodType? = nil
	public var updateMethodIn: String? = nil
	public var categoryFullIdsStartsWith: String? = nil
	public var categoryFullIdsEqual: String? = nil
	public var permissionNamesMatchAnd: String? = nil
	public var permissionNamesMatchOr: String? = nil
	public var permissionNamesNotContains: String? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["categoryIdEqual"] != nil {
			categoryIdEqual = dict["categoryIdEqual"] as? Int
		}
		if dict["categoryIdIn"] != nil {
			categoryIdIn = dict["categoryIdIn"] as? String
		}
		if dict["userIdEqual"] != nil {
			userIdEqual = dict["userIdEqual"] as? String
		}
		if dict["userIdIn"] != nil {
			userIdIn = dict["userIdIn"] as? String
		}
		if dict["permissionLevelEqual"] != nil {
			permissionLevelEqual = CategoryUserPermissionLevel(rawValue: (dict["permissionLevelEqual"] as? Int)!)
		}
		if dict["permissionLevelIn"] != nil {
			permissionLevelIn = dict["permissionLevelIn"] as? String
		}
		if dict["statusEqual"] != nil {
			statusEqual = CategoryUserStatus(rawValue: (dict["statusEqual"] as? Int)!)
		}
		if dict["statusIn"] != nil {
			statusIn = dict["statusIn"] as? String
		}
		if dict["createdAtGreaterThanOrEqual"] != nil {
			createdAtGreaterThanOrEqual = dict["createdAtGreaterThanOrEqual"] as? Int
		}
		if dict["createdAtLessThanOrEqual"] != nil {
			createdAtLessThanOrEqual = dict["createdAtLessThanOrEqual"] as? Int
		}
		if dict["updatedAtGreaterThanOrEqual"] != nil {
			updatedAtGreaterThanOrEqual = dict["updatedAtGreaterThanOrEqual"] as? Int
		}
		if dict["updatedAtLessThanOrEqual"] != nil {
			updatedAtLessThanOrEqual = dict["updatedAtLessThanOrEqual"] as? Int
		}
		if dict["updateMethodEqual"] != nil {
			updateMethodEqual = UpdateMethodType(rawValue: (dict["updateMethodEqual"] as? Int)!)
		}
		if dict["updateMethodIn"] != nil {
			updateMethodIn = dict["updateMethodIn"] as? String
		}
		if dict["categoryFullIdsStartsWith"] != nil {
			categoryFullIdsStartsWith = dict["categoryFullIdsStartsWith"] as? String
		}
		if dict["categoryFullIdsEqual"] != nil {
			categoryFullIdsEqual = dict["categoryFullIdsEqual"] as? String
		}
		if dict["permissionNamesMatchAnd"] != nil {
			permissionNamesMatchAnd = dict["permissionNamesMatchAnd"] as? String
		}
		if dict["permissionNamesMatchOr"] != nil {
			permissionNamesMatchOr = dict["permissionNamesMatchOr"] as? String
		}
		if dict["permissionNamesNotContains"] != nil {
			permissionNamesNotContains = dict["permissionNamesNotContains"] as? String
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(categoryIdEqual != nil) {
			dict["categoryIdEqual"] = categoryIdEqual!
		}
		if(categoryIdIn != nil) {
			dict["categoryIdIn"] = categoryIdIn!
		}
		if(userIdEqual != nil) {
			dict["userIdEqual"] = userIdEqual!
		}
		if(userIdIn != nil) {
			dict["userIdIn"] = userIdIn!
		}
		if(permissionLevelEqual != nil) {
			dict["permissionLevelEqual"] = permissionLevelEqual!.rawValue
		}
		if(permissionLevelIn != nil) {
			dict["permissionLevelIn"] = permissionLevelIn!
		}
		if(statusEqual != nil) {
			dict["statusEqual"] = statusEqual!.rawValue
		}
		if(statusIn != nil) {
			dict["statusIn"] = statusIn!
		}
		if(createdAtGreaterThanOrEqual != nil) {
			dict["createdAtGreaterThanOrEqual"] = createdAtGreaterThanOrEqual!
		}
		if(createdAtLessThanOrEqual != nil) {
			dict["createdAtLessThanOrEqual"] = createdAtLessThanOrEqual!
		}
		if(updatedAtGreaterThanOrEqual != nil) {
			dict["updatedAtGreaterThanOrEqual"] = updatedAtGreaterThanOrEqual!
		}
		if(updatedAtLessThanOrEqual != nil) {
			dict["updatedAtLessThanOrEqual"] = updatedAtLessThanOrEqual!
		}
		if(updateMethodEqual != nil) {
			dict["updateMethodEqual"] = updateMethodEqual!.rawValue
		}
		if(updateMethodIn != nil) {
			dict["updateMethodIn"] = updateMethodIn!
		}
		if(categoryFullIdsStartsWith != nil) {
			dict["categoryFullIdsStartsWith"] = categoryFullIdsStartsWith!
		}
		if(categoryFullIdsEqual != nil) {
			dict["categoryFullIdsEqual"] = categoryFullIdsEqual!
		}
		if(permissionNamesMatchAnd != nil) {
			dict["permissionNamesMatchAnd"] = permissionNamesMatchAnd!
		}
		if(permissionNamesMatchOr != nil) {
			dict["permissionNamesMatchOr"] = permissionNamesMatchOr!
		}
		if(permissionNamesNotContains != nil) {
			dict["permissionNamesNotContains"] = permissionNamesNotContains!
		}
		return dict
	}
}

