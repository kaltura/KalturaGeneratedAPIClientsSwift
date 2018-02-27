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
// Copyright (C) 2006-2018  Kaltura Inc.
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

open class Permission: ObjectBase {

	public class PermissionTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var type: BaseTokenizedObject {
			get {
				return self.append("type") 
			}
		}
		
		public var name: BaseTokenizedObject {
			get {
				return self.append("name") 
			}
		}
		
		public var friendlyName: BaseTokenizedObject {
			get {
				return self.append("friendlyName") 
			}
		}
		
		public var description: BaseTokenizedObject {
			get {
				return self.append("description") 
			}
		}
		
		public var status: BaseTokenizedObject {
			get {
				return self.append("status") 
			}
		}
		
		public var partnerId: BaseTokenizedObject {
			get {
				return self.append("partnerId") 
			}
		}
		
		public var dependsOnPermissionNames: BaseTokenizedObject {
			get {
				return self.append("dependsOnPermissionNames") 
			}
		}
		
		public var tags: BaseTokenizedObject {
			get {
				return self.append("tags") 
			}
		}
		
		public var permissionItemsIds: BaseTokenizedObject {
			get {
				return self.append("permissionItemsIds") 
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
		
		public var partnerGroup: BaseTokenizedObject {
			get {
				return self.append("partnerGroup") 
			}
		}
	}

	public var id: Int? = nil
	public var type: PermissionType? = nil
	public var name: String? = nil
	public var friendlyName: String? = nil
	public var description: String? = nil
	public var status: PermissionStatus? = nil
	public var partnerId: Int? = nil
	public var dependsOnPermissionNames: String? = nil
	public var tags: String? = nil
	public var permissionItemsIds: String? = nil
	public var createdAt: Int? = nil
	public var updatedAt: Int? = nil
	public var partnerGroup: String? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(type: String) {
		self.dict["type"] = type
	}
	
	public func setMultiRequestToken(name: String) {
		self.dict["name"] = name
	}
	
	public func setMultiRequestToken(friendlyName: String) {
		self.dict["friendlyName"] = friendlyName
	}
	
	public func setMultiRequestToken(description: String) {
		self.dict["description"] = description
	}
	
	public func setMultiRequestToken(status: String) {
		self.dict["status"] = status
	}
	
	public func setMultiRequestToken(partnerId: String) {
		self.dict["partnerId"] = partnerId
	}
	
	public func setMultiRequestToken(dependsOnPermissionNames: String) {
		self.dict["dependsOnPermissionNames"] = dependsOnPermissionNames
	}
	
	public func setMultiRequestToken(tags: String) {
		self.dict["tags"] = tags
	}
	
	public func setMultiRequestToken(permissionItemsIds: String) {
		self.dict["permissionItemsIds"] = permissionItemsIds
	}
	
	public func setMultiRequestToken(createdAt: String) {
		self.dict["createdAt"] = createdAt
	}
	
	public func setMultiRequestToken(updatedAt: String) {
		self.dict["updatedAt"] = updatedAt
	}
	
	public func setMultiRequestToken(partnerGroup: String) {
		self.dict["partnerGroup"] = partnerGroup
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = dict["id"] as? Int
		}
		if dict["type"] != nil {
			type = PermissionType(rawValue: (dict["type"] as? Int)!)
		}
		if dict["name"] != nil {
			name = dict["name"] as? String
		}
		if dict["friendlyName"] != nil {
			friendlyName = dict["friendlyName"] as? String
		}
		if dict["description"] != nil {
			description = dict["description"] as? String
		}
		if dict["status"] != nil {
			status = PermissionStatus(rawValue: (dict["status"] as? Int)!)
		}
		if dict["partnerId"] != nil {
			partnerId = dict["partnerId"] as? Int
		}
		if dict["dependsOnPermissionNames"] != nil {
			dependsOnPermissionNames = dict["dependsOnPermissionNames"] as? String
		}
		if dict["tags"] != nil {
			tags = dict["tags"] as? String
		}
		if dict["permissionItemsIds"] != nil {
			permissionItemsIds = dict["permissionItemsIds"] as? String
		}
		if dict["createdAt"] != nil {
			createdAt = dict["createdAt"] as? Int
		}
		if dict["updatedAt"] != nil {
			updatedAt = dict["updatedAt"] as? Int
		}
		if dict["partnerGroup"] != nil {
			partnerGroup = dict["partnerGroup"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(name != nil) {
			dict["name"] = name!
		}
		if(friendlyName != nil) {
			dict["friendlyName"] = friendlyName!
		}
		if(description != nil) {
			dict["description"] = description!
		}
		if(status != nil) {
			dict["status"] = status!.rawValue
		}
		if(dependsOnPermissionNames != nil) {
			dict["dependsOnPermissionNames"] = dependsOnPermissionNames!
		}
		if(tags != nil) {
			dict["tags"] = tags!
		}
		if(permissionItemsIds != nil) {
			dict["permissionItemsIds"] = permissionItemsIds!
		}
		if(partnerGroup != nil) {
			dict["partnerGroup"] = partnerGroup!
		}
		return dict
	}
}

