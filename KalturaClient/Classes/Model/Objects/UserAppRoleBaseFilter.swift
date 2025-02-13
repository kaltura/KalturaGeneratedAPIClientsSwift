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

open class UserAppRoleBaseFilter: RelatedFilter {

	public class UserAppRoleBaseFilterTokenizer: RelatedFilter.RelatedFilterTokenizer {
		
		public var appGuidEqual: BaseTokenizedObject {
			get {
				return self.append("appGuidEqual") 
			}
		}
		
		public var appGuidIn: BaseTokenizedObject {
			get {
				return self.append("appGuidIn") 
			}
		}
		
		public var userRoleIdEqual: BaseTokenizedObject {
			get {
				return self.append("userRoleIdEqual") 
			}
		}
		
		public var userRoleIdIn: BaseTokenizedObject {
			get {
				return self.append("userRoleIdIn") 
			}
		}
		
		public var createdAtLessThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("createdAtLessThanOrEqual") 
			}
		}
		
		public var createdAtGreaterThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("createdAtGreaterThanOrEqual") 
			}
		}
		
		public var updatedAtLessThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("updatedAtLessThanOrEqual") 
			}
		}
		
		public var updatedAtGreaterThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("updatedAtGreaterThanOrEqual") 
			}
		}
	}

	/**  The app-registry id to search for  */
	public var appGuidEqual: String? = nil
	/**  Apps-registries ids csv list  */
	public var appGuidIn: String? = nil
	/**  The user-role id to search for  */
	public var userRoleIdEqual: String? = nil
	/**  Users-roles ids csv list  */
	public var userRoleIdIn: String? = nil
	/**  Unix timestamp  */
	public var createdAtLessThanOrEqual: Int? = nil
	/**  Unix timestamp  */
	public var createdAtGreaterThanOrEqual: Int? = nil
	/**  Unix timestamp  */
	public var updatedAtLessThanOrEqual: Int? = nil
	/**  Unix timestamp  */
	public var updatedAtGreaterThanOrEqual: Int? = nil


	public func setMultiRequestToken(appGuidEqual: String) {
		self.dict["appGuidEqual"] = appGuidEqual
	}
	
	public func setMultiRequestToken(appGuidIn: String) {
		self.dict["appGuidIn"] = appGuidIn
	}
	
	public func setMultiRequestToken(userRoleIdEqual: String) {
		self.dict["userRoleIdEqual"] = userRoleIdEqual
	}
	
	public func setMultiRequestToken(userRoleIdIn: String) {
		self.dict["userRoleIdIn"] = userRoleIdIn
	}
	
	public func setMultiRequestToken(createdAtLessThanOrEqual: String) {
		self.dict["createdAtLessThanOrEqual"] = createdAtLessThanOrEqual
	}
	
	public func setMultiRequestToken(createdAtGreaterThanOrEqual: String) {
		self.dict["createdAtGreaterThanOrEqual"] = createdAtGreaterThanOrEqual
	}
	
	public func setMultiRequestToken(updatedAtLessThanOrEqual: String) {
		self.dict["updatedAtLessThanOrEqual"] = updatedAtLessThanOrEqual
	}
	
	public func setMultiRequestToken(updatedAtGreaterThanOrEqual: String) {
		self.dict["updatedAtGreaterThanOrEqual"] = updatedAtGreaterThanOrEqual
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["appGuidEqual"] != nil {
			appGuidEqual = dict["appGuidEqual"] as? String
		}
		if dict["appGuidIn"] != nil {
			appGuidIn = dict["appGuidIn"] as? String
		}
		if dict["userRoleIdEqual"] != nil {
			userRoleIdEqual = dict["userRoleIdEqual"] as? String
		}
		if dict["userRoleIdIn"] != nil {
			userRoleIdIn = dict["userRoleIdIn"] as? String
		}
		if dict["createdAtLessThanOrEqual"] != nil {
			createdAtLessThanOrEqual = dict["createdAtLessThanOrEqual"] as? Int
		}
		if dict["createdAtGreaterThanOrEqual"] != nil {
			createdAtGreaterThanOrEqual = dict["createdAtGreaterThanOrEqual"] as? Int
		}
		if dict["updatedAtLessThanOrEqual"] != nil {
			updatedAtLessThanOrEqual = dict["updatedAtLessThanOrEqual"] as? Int
		}
		if dict["updatedAtGreaterThanOrEqual"] != nil {
			updatedAtGreaterThanOrEqual = dict["updatedAtGreaterThanOrEqual"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(appGuidEqual != nil) {
			dict["appGuidEqual"] = appGuidEqual!
		}
		if(appGuidIn != nil) {
			dict["appGuidIn"] = appGuidIn!
		}
		if(userRoleIdEqual != nil) {
			dict["userRoleIdEqual"] = userRoleIdEqual!
		}
		if(userRoleIdIn != nil) {
			dict["userRoleIdIn"] = userRoleIdIn!
		}
		if(createdAtLessThanOrEqual != nil) {
			dict["createdAtLessThanOrEqual"] = createdAtLessThanOrEqual!
		}
		if(createdAtGreaterThanOrEqual != nil) {
			dict["createdAtGreaterThanOrEqual"] = createdAtGreaterThanOrEqual!
		}
		if(updatedAtLessThanOrEqual != nil) {
			dict["updatedAtLessThanOrEqual"] = updatedAtLessThanOrEqual!
		}
		if(updatedAtGreaterThanOrEqual != nil) {
			dict["updatedAtGreaterThanOrEqual"] = updatedAtGreaterThanOrEqual!
		}
		return dict
	}
}

