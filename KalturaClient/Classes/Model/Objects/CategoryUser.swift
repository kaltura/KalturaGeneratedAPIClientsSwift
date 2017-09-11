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

	public class CategoryUserTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var categoryId: BaseTokenizedObject {
			get {
				return self.append("categoryId") 
			}
		}
		
		public var userId: BaseTokenizedObject {
			get {
				return self.append("userId") 
			}
		}
		
		public var partnerId: BaseTokenizedObject {
			get {
				return self.append("partnerId") 
			}
		}
		
		public var permissionLevel: BaseTokenizedObject {
			get {
				return self.append("permissionLevel") 
			}
		}
		
		public var status: BaseTokenizedObject {
			get {
				return self.append("status") 
			}
		}
		
		public var createdAt: BaseTokenizedObject {
			get {
				return self.append("createdAt") 
			}
		}
		
		public var updatedAt: BaseTokenizedObject {
			get {
				return self.append("updatedAt") 
			}
		}
		
		public var updateMethod: BaseTokenizedObject {
			get {
				return self.append("updateMethod") 
			}
		}
		
		public var categoryFullIds: BaseTokenizedObject {
			get {
				return self.append("categoryFullIds") 
			}
		}
		
		public var permissionNames: BaseTokenizedObject {
			get {
				return self.append("permissionNames") 
			}
		}
	}

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


	public func setMultiRequestToken(categoryId: String) {
		self.dict["categoryId"] = categoryId
	}
	
	public func setMultiRequestToken(userId: String) {
		self.dict["userId"] = userId
	}
	
	public func setMultiRequestToken(partnerId: String) {
		self.dict["partnerId"] = partnerId
	}
	
	public func setMultiRequestToken(permissionLevel: String) {
		self.dict["permissionLevel"] = permissionLevel
	}
	
	public func setMultiRequestToken(status: String) {
		self.dict["status"] = status
	}
	
	public func setMultiRequestToken(createdAt: String) {
		self.dict["createdAt"] = createdAt
	}
	
	public func setMultiRequestToken(updatedAt: String) {
		self.dict["updatedAt"] = updatedAt
	}
	
	public func setMultiRequestToken(updateMethod: String) {
		self.dict["updateMethod"] = updateMethod
	}
	
	public func setMultiRequestToken(categoryFullIds: String) {
		self.dict["categoryFullIds"] = categoryFullIds
	}
	
	public func setMultiRequestToken(permissionNames: String) {
		self.dict["permissionNames"] = permissionNames
	}
	
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

	internal override func toDictionary() -> [String: Any] {
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

