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
// Copyright (C) 2006-2023  Kaltura Inc.
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

open class AppRole: ObjectBase {

	public class AppRoleTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var appGuid: BaseTokenizedObject {
			get {
				return self.append("appGuid") 
			}
		}
		
		public var userRoleId: BaseTokenizedObject {
			get {
				return self.append("userRoleId") 
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
	}

	public var appGuid: String? = nil
	public var userRoleId: Int? = nil
	/**  Entry creation date as Unix timestamp (In seconds)  */
	public var createdAt: Int? = nil
	/**  Entry updated date as Unix timestamp (In seconds)  */
	public var updatedAt: Int? = nil


	public func setMultiRequestToken(appGuid: String) {
		self.dict["appGuid"] = appGuid
	}
	
	public func setMultiRequestToken(userRoleId: String) {
		self.dict["userRoleId"] = userRoleId
	}
	
	public func setMultiRequestToken(createdAt: String) {
		self.dict["createdAt"] = createdAt
	}
	
	public func setMultiRequestToken(updatedAt: String) {
		self.dict["updatedAt"] = updatedAt
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["appGuid"] != nil {
			appGuid = dict["appGuid"] as? String
		}
		if dict["userRoleId"] != nil {
			userRoleId = dict["userRoleId"] as? Int
		}
		if dict["createdAt"] != nil {
			createdAt = dict["createdAt"] as? Int
		}
		if dict["updatedAt"] != nil {
			updatedAt = dict["updatedAt"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(appGuid != nil) {
			dict["appGuid"] = appGuid!
		}
		if(userRoleId != nil) {
			dict["userRoleId"] = userRoleId!
		}
		return dict
	}
}

