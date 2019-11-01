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
// Copyright (C) 2006-2019  Kaltura Inc.
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

open class UserBaseFilter: BaseUserFilter {

	public class UserBaseFilterTokenizer: BaseUserFilter.BaseUserFilterTokenizer {
		
		public var typeEqual: BaseTokenizedObject {
			get {
				return self.append("typeEqual") 
			}
		}
		
		public var typeIn: BaseTokenizedObject {
			get {
				return self.append("typeIn") 
			}
		}
		
		public var isAdminEqual: BaseTokenizedObject {
			get {
				return self.append("isAdminEqual") 
			}
		}
		
		public var firstNameStartsWith: BaseTokenizedObject {
			get {
				return self.append("firstNameStartsWith") 
			}
		}
		
		public var lastNameStartsWith: BaseTokenizedObject {
			get {
				return self.append("lastNameStartsWith") 
			}
		}
	}

	public var typeEqual: UserType? = nil
	public var typeIn: String? = nil
	public var isAdminEqual: Bool? = nil
	public var firstNameStartsWith: String? = nil
	public var lastNameStartsWith: String? = nil


	public func setMultiRequestToken(typeEqual: String) {
		self.dict["typeEqual"] = typeEqual
	}
	
	public func setMultiRequestToken(typeIn: String) {
		self.dict["typeIn"] = typeIn
	}
	
	public func setMultiRequestToken(isAdminEqual: String) {
		self.dict["isAdminEqual"] = isAdminEqual
	}
	
	public func setMultiRequestToken(firstNameStartsWith: String) {
		self.dict["firstNameStartsWith"] = firstNameStartsWith
	}
	
	public func setMultiRequestToken(lastNameStartsWith: String) {
		self.dict["lastNameStartsWith"] = lastNameStartsWith
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["typeEqual"] != nil {
			typeEqual = UserType(rawValue: (dict["typeEqual"] as? Int)!)
		}
		if dict["typeIn"] != nil {
			typeIn = dict["typeIn"] as? String
		}
		if dict["isAdminEqual"] != nil {
			isAdminEqual = dict["isAdminEqual"] as? Bool
		}
		if dict["firstNameStartsWith"] != nil {
			firstNameStartsWith = dict["firstNameStartsWith"] as? String
		}
		if dict["lastNameStartsWith"] != nil {
			lastNameStartsWith = dict["lastNameStartsWith"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(typeEqual != nil) {
			dict["typeEqual"] = typeEqual!.rawValue
		}
		if(typeIn != nil) {
			dict["typeIn"] = typeIn!
		}
		if(isAdminEqual != nil) {
			dict["isAdminEqual"] = isAdminEqual!
		}
		if(firstNameStartsWith != nil) {
			dict["firstNameStartsWith"] = firstNameStartsWith!
		}
		if(lastNameStartsWith != nil) {
			dict["lastNameStartsWith"] = lastNameStartsWith!
		}
		return dict
	}
}

