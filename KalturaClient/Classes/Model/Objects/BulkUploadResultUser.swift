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

open class BulkUploadResultUser: BulkUploadResult {

	public class BulkUploadResultUserTokenizer: BulkUploadResult.BulkUploadResultTokenizer {
		
		public var userId: BaseTokenizedObject {
			get {
				return self.append("userId") 
			}
		}
		
		public var screenName: BaseTokenizedObject {
			get {
				return self.append("screenName") 
			}
		}
		
		public var email: BaseTokenizedObject {
			get {
				return self.append("email") 
			}
		}
		
		public var description: BaseTokenizedObject {
			get {
				return self.append("description") 
			}
		}
		
		public var tags: BaseTokenizedObject {
			get {
				return self.append("tags") 
			}
		}
		
		public var dateOfBirth: BaseTokenizedObject {
			get {
				return self.append("dateOfBirth") 
			}
		}
		
		public var country: BaseTokenizedObject {
			get {
				return self.append("country") 
			}
		}
		
		public var state: BaseTokenizedObject {
			get {
				return self.append("state") 
			}
		}
		
		public var city: BaseTokenizedObject {
			get {
				return self.append("city") 
			}
		}
		
		public var zip: BaseTokenizedObject {
			get {
				return self.append("zip") 
			}
		}
		
		public var gender: BaseTokenizedObject {
			get {
				return self.append("gender") 
			}
		}
		
		public var firstName: BaseTokenizedObject {
			get {
				return self.append("firstName") 
			}
		}
		
		public var lastName: BaseTokenizedObject {
			get {
				return self.append("lastName") 
			}
		}
		
		public var group: BaseTokenizedObject {
			get {
				return self.append("group") 
			}
		}
	}

	public var userId: String? = nil
	public var screenName: String? = nil
	public var email: String? = nil
	public var description: String? = nil
	public var tags: String? = nil
	public var dateOfBirth: Int? = nil
	public var country: String? = nil
	public var state: String? = nil
	public var city: String? = nil
	public var zip: String? = nil
	public var gender: Int? = nil
	public var firstName: String? = nil
	public var lastName: String? = nil
	public var group: String? = nil


	public func setMultiRequestToken(userId: String) {
		self.dict["userId"] = userId
	}
	
	public func setMultiRequestToken(screenName: String) {
		self.dict["screenName"] = screenName
	}
	
	public func setMultiRequestToken(email: String) {
		self.dict["email"] = email
	}
	
	public func setMultiRequestToken(description: String) {
		self.dict["description"] = description
	}
	
	public func setMultiRequestToken(tags: String) {
		self.dict["tags"] = tags
	}
	
	public func setMultiRequestToken(dateOfBirth: String) {
		self.dict["dateOfBirth"] = dateOfBirth
	}
	
	public func setMultiRequestToken(country: String) {
		self.dict["country"] = country
	}
	
	public func setMultiRequestToken(state: String) {
		self.dict["state"] = state
	}
	
	public func setMultiRequestToken(city: String) {
		self.dict["city"] = city
	}
	
	public func setMultiRequestToken(zip: String) {
		self.dict["zip"] = zip
	}
	
	public func setMultiRequestToken(gender: String) {
		self.dict["gender"] = gender
	}
	
	public func setMultiRequestToken(firstName: String) {
		self.dict["firstName"] = firstName
	}
	
	public func setMultiRequestToken(lastName: String) {
		self.dict["lastName"] = lastName
	}
	
	public func setMultiRequestToken(group: String) {
		self.dict["group"] = group
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["userId"] != nil {
			userId = dict["userId"] as? String
		}
		if dict["screenName"] != nil {
			screenName = dict["screenName"] as? String
		}
		if dict["email"] != nil {
			email = dict["email"] as? String
		}
		if dict["description"] != nil {
			description = dict["description"] as? String
		}
		if dict["tags"] != nil {
			tags = dict["tags"] as? String
		}
		if dict["dateOfBirth"] != nil {
			dateOfBirth = dict["dateOfBirth"] as? Int
		}
		if dict["country"] != nil {
			country = dict["country"] as? String
		}
		if dict["state"] != nil {
			state = dict["state"] as? String
		}
		if dict["city"] != nil {
			city = dict["city"] as? String
		}
		if dict["zip"] != nil {
			zip = dict["zip"] as? String
		}
		if dict["gender"] != nil {
			gender = dict["gender"] as? Int
		}
		if dict["firstName"] != nil {
			firstName = dict["firstName"] as? String
		}
		if dict["lastName"] != nil {
			lastName = dict["lastName"] as? String
		}
		if dict["group"] != nil {
			group = dict["group"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(userId != nil) {
			dict["userId"] = userId!
		}
		if(screenName != nil) {
			dict["screenName"] = screenName!
		}
		if(email != nil) {
			dict["email"] = email!
		}
		if(description != nil) {
			dict["description"] = description!
		}
		if(tags != nil) {
			dict["tags"] = tags!
		}
		if(dateOfBirth != nil) {
			dict["dateOfBirth"] = dateOfBirth!
		}
		if(country != nil) {
			dict["country"] = country!
		}
		if(state != nil) {
			dict["state"] = state!
		}
		if(city != nil) {
			dict["city"] = city!
		}
		if(zip != nil) {
			dict["zip"] = zip!
		}
		if(gender != nil) {
			dict["gender"] = gender!
		}
		if(firstName != nil) {
			dict["firstName"] = firstName!
		}
		if(lastName != nil) {
			dict["lastName"] = lastName!
		}
		if(group != nil) {
			dict["group"] = group!
		}
		return dict
	}
}

