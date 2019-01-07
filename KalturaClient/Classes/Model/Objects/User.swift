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

open class User: ObjectBase {

	public class UserTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var partnerId: BaseTokenizedObject {
			get {
				return self.append("partnerId") 
			}
		}
		
		public var type: BaseTokenizedObject {
			get {
				return self.append("type") 
			}
		}
		
		public var screenName: BaseTokenizedObject {
			get {
				return self.append("screenName") 
			}
		}
		
		public var fullName: BaseTokenizedObject {
			get {
				return self.append("fullName") 
			}
		}
		
		public var email: BaseTokenizedObject {
			get {
				return self.append("email") 
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
		
		public var thumbnailUrl: BaseTokenizedObject {
			get {
				return self.append("thumbnailUrl") 
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
		
		public var adminTags: BaseTokenizedObject {
			get {
				return self.append("adminTags") 
			}
		}
		
		public var gender: BaseTokenizedObject {
			get {
				return self.append("gender") 
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
		
		public var partnerData: BaseTokenizedObject {
			get {
				return self.append("partnerData") 
			}
		}
		
		public var indexedPartnerDataInt: BaseTokenizedObject {
			get {
				return self.append("indexedPartnerDataInt") 
			}
		}
		
		public var indexedPartnerDataString: BaseTokenizedObject {
			get {
				return self.append("indexedPartnerDataString") 
			}
		}
		
		public var storageSize: BaseTokenizedObject {
			get {
				return self.append("storageSize") 
			}
		}
		
		public var password: BaseTokenizedObject {
			get {
				return self.append("password") 
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
		
		public var isAdmin: BaseTokenizedObject {
			get {
				return self.append("isAdmin") 
			}
		}
		
		public var language: BaseTokenizedObject {
			get {
				return self.append("language") 
			}
		}
		
		public var lastLoginTime: BaseTokenizedObject {
			get {
				return self.append("lastLoginTime") 
			}
		}
		
		public var statusUpdatedAt: BaseTokenizedObject {
			get {
				return self.append("statusUpdatedAt") 
			}
		}
		
		public var deletedAt: BaseTokenizedObject {
			get {
				return self.append("deletedAt") 
			}
		}
		
		public var loginEnabled: BaseTokenizedObject {
			get {
				return self.append("loginEnabled") 
			}
		}
		
		public var roleIds: BaseTokenizedObject {
			get {
				return self.append("roleIds") 
			}
		}
		
		public var roleNames: BaseTokenizedObject {
			get {
				return self.append("roleNames") 
			}
		}
		
		public var isAccountOwner: BaseTokenizedObject {
			get {
				return self.append("isAccountOwner") 
			}
		}
		
		public var allowedPartnerIds: BaseTokenizedObject {
			get {
				return self.append("allowedPartnerIds") 
			}
		}
		
		public var allowedPartnerPackages: BaseTokenizedObject {
			get {
				return self.append("allowedPartnerPackages") 
			}
		}
		
		public var userMode: BaseTokenizedObject {
			get {
				return self.append("userMode") 
			}
		}
	}

	public var id: String? = nil
	public var partnerId: Int? = nil
	public var type: UserType? = nil
	public var screenName: String? = nil
	public var fullName: String? = nil
	public var email: String? = nil
	public var dateOfBirth: Int? = nil
	public var country: String? = nil
	public var state: String? = nil
	public var city: String? = nil
	public var zip: String? = nil
	public var thumbnailUrl: String? = nil
	public var description: String? = nil
	public var tags: String? = nil
	/**  Admin tags can be updated only by using an admin session  */
	public var adminTags: String? = nil
	public var gender: Gender? = nil
	public var status: UserStatus? = nil
	/**  Creation date as Unix timestamp (In seconds)  */
	public var createdAt: Int? = nil
	/**  Last update date as Unix timestamp (In seconds)  */
	public var updatedAt: Int? = nil
	/**  Can be used to store various partner related data as a string  */
	public var partnerData: String? = nil
	public var indexedPartnerDataInt: Int? = nil
	public var indexedPartnerDataString: String? = nil
	public var storageSize: Int? = nil
	public var password: String? = nil
	public var firstName: String? = nil
	public var lastName: String? = nil
	public var isAdmin: Bool? = nil
	public var language: LanguageCode? = nil
	public var lastLoginTime: Int? = nil
	public var statusUpdatedAt: Int? = nil
	public var deletedAt: Int? = nil
	public var loginEnabled: Bool? = nil
	public var roleIds: String? = nil
	public var roleNames: String? = nil
	public var isAccountOwner: Bool? = nil
	public var allowedPartnerIds: String? = nil
	public var allowedPartnerPackages: String? = nil
	public var userMode: UserMode? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(partnerId: String) {
		self.dict["partnerId"] = partnerId
	}
	
	public func setMultiRequestToken(type: String) {
		self.dict["type"] = type
	}
	
	public func setMultiRequestToken(screenName: String) {
		self.dict["screenName"] = screenName
	}
	
	public func setMultiRequestToken(fullName: String) {
		self.dict["fullName"] = fullName
	}
	
	public func setMultiRequestToken(email: String) {
		self.dict["email"] = email
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
	
	public func setMultiRequestToken(thumbnailUrl: String) {
		self.dict["thumbnailUrl"] = thumbnailUrl
	}
	
	public func setMultiRequestToken(description: String) {
		self.dict["description"] = description
	}
	
	public func setMultiRequestToken(tags: String) {
		self.dict["tags"] = tags
	}
	
	public func setMultiRequestToken(adminTags: String) {
		self.dict["adminTags"] = adminTags
	}
	
	public func setMultiRequestToken(gender: String) {
		self.dict["gender"] = gender
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
	
	public func setMultiRequestToken(partnerData: String) {
		self.dict["partnerData"] = partnerData
	}
	
	public func setMultiRequestToken(indexedPartnerDataInt: String) {
		self.dict["indexedPartnerDataInt"] = indexedPartnerDataInt
	}
	
	public func setMultiRequestToken(indexedPartnerDataString: String) {
		self.dict["indexedPartnerDataString"] = indexedPartnerDataString
	}
	
	public func setMultiRequestToken(storageSize: String) {
		self.dict["storageSize"] = storageSize
	}
	
	public func setMultiRequestToken(password: String) {
		self.dict["password"] = password
	}
	
	public func setMultiRequestToken(firstName: String) {
		self.dict["firstName"] = firstName
	}
	
	public func setMultiRequestToken(lastName: String) {
		self.dict["lastName"] = lastName
	}
	
	public func setMultiRequestToken(isAdmin: String) {
		self.dict["isAdmin"] = isAdmin
	}
	
	public func setMultiRequestToken(language: String) {
		self.dict["language"] = language
	}
	
	public func setMultiRequestToken(lastLoginTime: String) {
		self.dict["lastLoginTime"] = lastLoginTime
	}
	
	public func setMultiRequestToken(statusUpdatedAt: String) {
		self.dict["statusUpdatedAt"] = statusUpdatedAt
	}
	
	public func setMultiRequestToken(deletedAt: String) {
		self.dict["deletedAt"] = deletedAt
	}
	
	public func setMultiRequestToken(loginEnabled: String) {
		self.dict["loginEnabled"] = loginEnabled
	}
	
	public func setMultiRequestToken(roleIds: String) {
		self.dict["roleIds"] = roleIds
	}
	
	public func setMultiRequestToken(roleNames: String) {
		self.dict["roleNames"] = roleNames
	}
	
	public func setMultiRequestToken(isAccountOwner: String) {
		self.dict["isAccountOwner"] = isAccountOwner
	}
	
	public func setMultiRequestToken(allowedPartnerIds: String) {
		self.dict["allowedPartnerIds"] = allowedPartnerIds
	}
	
	public func setMultiRequestToken(allowedPartnerPackages: String) {
		self.dict["allowedPartnerPackages"] = allowedPartnerPackages
	}
	
	public func setMultiRequestToken(userMode: String) {
		self.dict["userMode"] = userMode
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = dict["id"] as? String
		}
		if dict["partnerId"] != nil {
			partnerId = dict["partnerId"] as? Int
		}
		if dict["type"] != nil {
			type = UserType(rawValue: (dict["type"] as? Int)!)
		}
		if dict["screenName"] != nil {
			screenName = dict["screenName"] as? String
		}
		if dict["fullName"] != nil {
			fullName = dict["fullName"] as? String
		}
		if dict["email"] != nil {
			email = dict["email"] as? String
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
		if dict["thumbnailUrl"] != nil {
			thumbnailUrl = dict["thumbnailUrl"] as? String
		}
		if dict["description"] != nil {
			description = dict["description"] as? String
		}
		if dict["tags"] != nil {
			tags = dict["tags"] as? String
		}
		if dict["adminTags"] != nil {
			adminTags = dict["adminTags"] as? String
		}
		if dict["gender"] != nil {
			gender = Gender(rawValue: (dict["gender"] as? Int)!)
		}
		if dict["status"] != nil {
			status = UserStatus(rawValue: (dict["status"] as? Int)!)
		}
		if dict["createdAt"] != nil {
			createdAt = dict["createdAt"] as? Int
		}
		if dict["updatedAt"] != nil {
			updatedAt = dict["updatedAt"] as? Int
		}
		if dict["partnerData"] != nil {
			partnerData = dict["partnerData"] as? String
		}
		if dict["indexedPartnerDataInt"] != nil {
			indexedPartnerDataInt = dict["indexedPartnerDataInt"] as? Int
		}
		if dict["indexedPartnerDataString"] != nil {
			indexedPartnerDataString = dict["indexedPartnerDataString"] as? String
		}
		if dict["storageSize"] != nil {
			storageSize = dict["storageSize"] as? Int
		}
		if dict["password"] != nil {
			password = dict["password"] as? String
		}
		if dict["firstName"] != nil {
			firstName = dict["firstName"] as? String
		}
		if dict["lastName"] != nil {
			lastName = dict["lastName"] as? String
		}
		if dict["isAdmin"] != nil {
			isAdmin = dict["isAdmin"] as? Bool
		}
		if dict["language"] != nil {
			language = LanguageCode(rawValue: "\(dict["language"]!)")
		}
		if dict["lastLoginTime"] != nil {
			lastLoginTime = dict["lastLoginTime"] as? Int
		}
		if dict["statusUpdatedAt"] != nil {
			statusUpdatedAt = dict["statusUpdatedAt"] as? Int
		}
		if dict["deletedAt"] != nil {
			deletedAt = dict["deletedAt"] as? Int
		}
		if dict["loginEnabled"] != nil {
			loginEnabled = dict["loginEnabled"] as? Bool
		}
		if dict["roleIds"] != nil {
			roleIds = dict["roleIds"] as? String
		}
		if dict["roleNames"] != nil {
			roleNames = dict["roleNames"] as? String
		}
		if dict["isAccountOwner"] != nil {
			isAccountOwner = dict["isAccountOwner"] as? Bool
		}
		if dict["allowedPartnerIds"] != nil {
			allowedPartnerIds = dict["allowedPartnerIds"] as? String
		}
		if dict["allowedPartnerPackages"] != nil {
			allowedPartnerPackages = dict["allowedPartnerPackages"] as? String
		}
		if dict["userMode"] != nil {
			userMode = UserMode(rawValue: (dict["userMode"] as? Int)!)
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(id != nil) {
			dict["id"] = id!
		}
		if(type != nil) {
			dict["type"] = type!.rawValue
		}
		if(screenName != nil) {
			dict["screenName"] = screenName!
		}
		if(fullName != nil) {
			dict["fullName"] = fullName!
		}
		if(email != nil) {
			dict["email"] = email!
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
		if(thumbnailUrl != nil) {
			dict["thumbnailUrl"] = thumbnailUrl!
		}
		if(description != nil) {
			dict["description"] = description!
		}
		if(tags != nil) {
			dict["tags"] = tags!
		}
		if(adminTags != nil) {
			dict["adminTags"] = adminTags!
		}
		if(gender != nil) {
			dict["gender"] = gender!.rawValue
		}
		if(status != nil) {
			dict["status"] = status!.rawValue
		}
		if(partnerData != nil) {
			dict["partnerData"] = partnerData!
		}
		if(indexedPartnerDataInt != nil) {
			dict["indexedPartnerDataInt"] = indexedPartnerDataInt!
		}
		if(indexedPartnerDataString != nil) {
			dict["indexedPartnerDataString"] = indexedPartnerDataString!
		}
		if(password != nil) {
			dict["password"] = password!
		}
		if(firstName != nil) {
			dict["firstName"] = firstName!
		}
		if(lastName != nil) {
			dict["lastName"] = lastName!
		}
		if(isAdmin != nil) {
			dict["isAdmin"] = isAdmin!
		}
		if(language != nil) {
			dict["language"] = language!.rawValue
		}
		if(loginEnabled != nil) {
			dict["loginEnabled"] = loginEnabled!
		}
		if(roleIds != nil) {
			dict["roleIds"] = roleIds!
		}
		if(isAccountOwner != nil) {
			dict["isAccountOwner"] = isAccountOwner!
		}
		if(allowedPartnerIds != nil) {
			dict["allowedPartnerIds"] = allowedPartnerIds!
		}
		if(allowedPartnerPackages != nil) {
			dict["allowedPartnerPackages"] = allowedPartnerPackages!
		}
		if(userMode != nil) {
			dict["userMode"] = userMode!.rawValue
		}
		return dict
	}
}

