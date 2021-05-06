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
// Copyright (C) 2006-2021  Kaltura Inc.
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

open class CategoryUserProviderFilter: Filter {

	public class CategoryUserProviderFilterTokenizer: Filter.FilterTokenizer {
		
		public var userIdEqual: BaseTokenizedObject {
			get {
				return self.append("userIdEqual") 
			}
		}
		
		public var userIdIn: BaseTokenizedObject {
			get {
				return self.append("userIdIn") 
			}
		}
		
		public var statusEqual: BaseTokenizedObject {
			get {
				return self.append("statusEqual") 
			}
		}
		
		public var statusIn: BaseTokenizedObject {
			get {
				return self.append("statusIn") 
			}
		}
		
		public var createdAtGreaterThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("createdAtGreaterThanOrEqual") 
			}
		}
		
		public var createdAtLessThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("createdAtLessThanOrEqual") 
			}
		}
		
		public var updatedAtGreaterThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("updatedAtGreaterThanOrEqual") 
			}
		}
		
		public var updatedAtLessThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("updatedAtLessThanOrEqual") 
			}
		}
		
		public var updateMethodEqual: BaseTokenizedObject {
			get {
				return self.append("updateMethodEqual") 
			}
		}
		
		public var updateMethodIn: BaseTokenizedObject {
			get {
				return self.append("updateMethodIn") 
			}
		}
		
		public var permissionNamesMatchAnd: BaseTokenizedObject {
			get {
				return self.append("permissionNamesMatchAnd") 
			}
		}
		
		public var permissionNamesMatchOr: BaseTokenizedObject {
			get {
				return self.append("permissionNamesMatchOr") 
			}
		}
	}

	public var userIdEqual: String? = nil
	public var userIdIn: String? = nil
	public var statusEqual: CategoryUserStatus? = nil
	public var statusIn: String? = nil
	public var createdAtGreaterThanOrEqual: Int? = nil
	public var createdAtLessThanOrEqual: Int? = nil
	public var updatedAtGreaterThanOrEqual: Int? = nil
	public var updatedAtLessThanOrEqual: Int? = nil
	public var updateMethodEqual: UpdateMethodType? = nil
	public var updateMethodIn: String? = nil
	public var permissionNamesMatchAnd: String? = nil
	public var permissionNamesMatchOr: String? = nil


	public func setMultiRequestToken(userIdEqual: String) {
		self.dict["userIdEqual"] = userIdEqual
	}
	
	public func setMultiRequestToken(userIdIn: String) {
		self.dict["userIdIn"] = userIdIn
	}
	
	public func setMultiRequestToken(statusEqual: String) {
		self.dict["statusEqual"] = statusEqual
	}
	
	public func setMultiRequestToken(statusIn: String) {
		self.dict["statusIn"] = statusIn
	}
	
	public func setMultiRequestToken(createdAtGreaterThanOrEqual: String) {
		self.dict["createdAtGreaterThanOrEqual"] = createdAtGreaterThanOrEqual
	}
	
	public func setMultiRequestToken(createdAtLessThanOrEqual: String) {
		self.dict["createdAtLessThanOrEqual"] = createdAtLessThanOrEqual
	}
	
	public func setMultiRequestToken(updatedAtGreaterThanOrEqual: String) {
		self.dict["updatedAtGreaterThanOrEqual"] = updatedAtGreaterThanOrEqual
	}
	
	public func setMultiRequestToken(updatedAtLessThanOrEqual: String) {
		self.dict["updatedAtLessThanOrEqual"] = updatedAtLessThanOrEqual
	}
	
	public func setMultiRequestToken(updateMethodEqual: String) {
		self.dict["updateMethodEqual"] = updateMethodEqual
	}
	
	public func setMultiRequestToken(updateMethodIn: String) {
		self.dict["updateMethodIn"] = updateMethodIn
	}
	
	public func setMultiRequestToken(permissionNamesMatchAnd: String) {
		self.dict["permissionNamesMatchAnd"] = permissionNamesMatchAnd
	}
	
	public func setMultiRequestToken(permissionNamesMatchOr: String) {
		self.dict["permissionNamesMatchOr"] = permissionNamesMatchOr
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["userIdEqual"] != nil {
			userIdEqual = dict["userIdEqual"] as? String
		}
		if dict["userIdIn"] != nil {
			userIdIn = dict["userIdIn"] as? String
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
		if dict["permissionNamesMatchAnd"] != nil {
			permissionNamesMatchAnd = dict["permissionNamesMatchAnd"] as? String
		}
		if dict["permissionNamesMatchOr"] != nil {
			permissionNamesMatchOr = dict["permissionNamesMatchOr"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(userIdEqual != nil) {
			dict["userIdEqual"] = userIdEqual!
		}
		if(userIdIn != nil) {
			dict["userIdIn"] = userIdIn!
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
		if(permissionNamesMatchAnd != nil) {
			dict["permissionNamesMatchAnd"] = permissionNamesMatchAnd!
		}
		if(permissionNamesMatchOr != nil) {
			dict["permissionNamesMatchOr"] = permissionNamesMatchOr!
		}
		return dict
	}
}

