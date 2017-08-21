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

open class CategoryUser: ObjectBase {

	public var categoryId: Int? = nil
	/**  User id  */
	public var userId: String? = nil
	/**  Partner id  */
	public var partnerId: Int? = nil
	/**  Permission level  */
	public var permissionLevel: CategoryUserPermissionLevel? = nil
	/**  Status  */
	public var status: CategoryUserStatus? = nil
	/**  CategoryUser creation date as Unix timestamp (In seconds)  */
	public var createdAt: Int? = nil
	/**  CategoryUser update date as Unix timestamp (In seconds)  */
	public var updatedAt: Int? = nil
	/**  Update method can be either manual or automatic to distinguish between manual
	  operations (for example in KMC) on automatic - using bulk upload  */
	public var updateMethod: UpdateMethodType? = nil
	/**  The full ids of the Category  */
	public var categoryFullIds: String? = nil
	/**  Set of category-related permissions for the current category user.  */
	public var permissionNames: String? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["categoryId"] != nil {
			categoryId = dict["categoryId"] as? Int
		}
		if dict["userId"] != nil {
			userId = dict["userId"] as? String
		}
		if dict["partnerId"] != nil {
			partnerId = dict["partnerId"] as? Int
		}
		if dict["permissionLevel"] != nil {
			permissionLevel = CategoryUserPermissionLevel(rawValue: (dict["permissionLevel"] as? Int)!)
		}
		if dict["status"] != nil {
			status = CategoryUserStatus(rawValue: (dict["status"] as? Int)!)
		}
		if dict["createdAt"] != nil {
			createdAt = dict["createdAt"] as? Int
		}
		if dict["updatedAt"] != nil {
			updatedAt = dict["updatedAt"] as? Int
		}
		if dict["updateMethod"] != nil {
			updateMethod = UpdateMethodType(rawValue: (dict["updateMethod"] as? Int)!)
		}
		if dict["categoryFullIds"] != nil {
			categoryFullIds = dict["categoryFullIds"] as? String
		}
		if dict["permissionNames"] != nil {
			permissionNames = dict["permissionNames"] as? String
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(categoryId != nil) {
			dict["categoryId"] = categoryId!
		}
		if(userId != nil) {
			dict["userId"] = userId!
		}
		if(permissionLevel != nil) {
			dict["permissionLevel"] = permissionLevel!.rawValue
		}
		if(updateMethod != nil) {
			dict["updateMethod"] = updateMethod!.rawValue
		}
		if(permissionNames != nil) {
			dict["permissionNames"] = permissionNames!
		}
		return dict
	}
}

