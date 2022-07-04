// ===================================================================================================
//                           _  __     _ _
//                          | |/ /__ _| | |_ _  _ _ _ __ _
//                          | ' </ _` | |  _| || | '_/ _` |
//                          |_|\_\__,_|_|\__|\_,_|_| \__,_|
//
// This file is part of the Kaltura Collaborative Media Suite which allows users
// to do with audio, video, and animation what Wiki platforms allow them to do with
// text.
//
// Copyright (C) 2006-2022  Kaltura Inc.
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

open class GroupUser: ObjectBase {

	public class GroupUserTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var userId: BaseTokenizedObject {
			get {
				return self.append("userId") 
			}
		}
		
		public var groupId: BaseTokenizedObject {
			get {
				return self.append("groupId") 
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
		
		public var creationMode: BaseTokenizedObject {
			get {
				return self.append("creationMode") 
			}
		}
		
		public var userRole: BaseTokenizedObject {
			get {
				return self.append("userRole") 
			}
		}
	}

	public var id: String? = nil
	public var userId: String? = nil
	public var groupId: String? = nil
	public var status: GroupUserStatus? = nil
	public var partnerId: Int? = nil
	/**  Creation date as Unix timestamp (In seconds)  */
	public var createdAt: Int? = nil
	/**  Last update date as Unix timestamp (In seconds)  */
	public var updatedAt: Int? = nil
	public var creationMode: GroupUserCreationMode? = nil
	public var userRole: GroupUserRole? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(userId: String) {
		self.dict["userId"] = userId
	}
	
	public func setMultiRequestToken(groupId: String) {
		self.dict["groupId"] = groupId
	}
	
	public func setMultiRequestToken(status: String) {
		self.dict["status"] = status
	}
	
	public func setMultiRequestToken(partnerId: String) {
		self.dict["partnerId"] = partnerId
	}
	
	public func setMultiRequestToken(createdAt: String) {
		self.dict["createdAt"] = createdAt
	}
	
	public func setMultiRequestToken(updatedAt: String) {
		self.dict["updatedAt"] = updatedAt
	}
	
	public func setMultiRequestToken(creationMode: String) {
		self.dict["creationMode"] = creationMode
	}
	
	public func setMultiRequestToken(userRole: String) {
		self.dict["userRole"] = userRole
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = dict["id"] as? String
		}
		if dict["userId"] != nil {
			userId = dict["userId"] as? String
		}
		if dict["groupId"] != nil {
			groupId = dict["groupId"] as? String
		}
		if dict["status"] != nil {
			status = GroupUserStatus(rawValue: (dict["status"] as? Int)!)
		}
		if dict["partnerId"] != nil {
			partnerId = dict["partnerId"] as? Int
		}
		if dict["createdAt"] != nil {
			createdAt = dict["createdAt"] as? Int
		}
		if dict["updatedAt"] != nil {
			updatedAt = dict["updatedAt"] as? Int
		}
		if dict["creationMode"] != nil {
			creationMode = GroupUserCreationMode(rawValue: (dict["creationMode"] as? Int)!)
		}
		if dict["userRole"] != nil {
			userRole = GroupUserRole(rawValue: (dict["userRole"] as? Int)!)
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(userId != nil) {
			dict["userId"] = userId!
		}
		if(groupId != nil) {
			dict["groupId"] = groupId!
		}
		if(creationMode != nil) {
			dict["creationMode"] = creationMode!.rawValue
		}
		if(userRole != nil) {
			dict["userRole"] = userRole!.rawValue
		}
		return dict
	}
}

