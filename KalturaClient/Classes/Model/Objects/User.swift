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

open class User: BaseUser {

	public class UserTokenizer: BaseUser.BaseUserTokenizer {
		
		public var type: BaseTokenizedObject {
			get {
				return self.append("type") 
			}
		}
		
		public var dateOfBirth: BaseTokenizedObject {
			get {
				return self.append("dateOfBirth") 
			}
		}
		
		public var gender: BaseTokenizedObject {
			get {
				return self.append("gender") 
			}
		}
		
		public var isAdmin: BaseTokenizedObject {
			get {
				return self.append("isAdmin") 
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
		
		public var loginEnabled: BaseTokenizedObject {
			get {
				return self.append("loginEnabled") 
			}
		}
		
		public var registrationInfo: BaseTokenizedObject {
			get {
				return self.append("registrationInfo") 
			}
		}
		
		public var attendanceInfo: BaseTokenizedObject {
			get {
				return self.append("attendanceInfo") 
			}
		}
		
		public var title: BaseTokenizedObject {
			get {
				return self.append("title") 
			}
		}
		
		public var company: BaseTokenizedObject {
			get {
				return self.append("company") 
			}
		}
		
		public var ksPrivileges: BaseTokenizedObject {
			get {
				return self.append("ksPrivileges") 
			}
		}
		
		public var encryptedSeed: BaseTokenizedObject {
			get {
				return self.append("encryptedSeed") 
			}
		}
		
		public var isSsoExcluded: BaseTokenizedObject {
			get {
				return self.append("isSsoExcluded") 
			}
		}
	}

	public var type: UserType? = nil
	public var dateOfBirth: Int? = nil
	public var gender: Gender? = nil
	public var isAdmin: Bool? = nil
	public var roleIds: String? = nil
	public var roleNames: String? = nil
	public var isAccountOwner: Bool? = nil
	public var password: String? = nil
	public var firstName: String? = nil
	public var lastName: String? = nil
	public var loginEnabled: Bool? = nil
	public var registrationInfo: String? = nil
	public var attendanceInfo: String? = nil
	public var title: String? = nil
	public var company: String? = nil
	public var ksPrivileges: String? = nil
	public var encryptedSeed: String? = nil
	public var isSsoExcluded: Bool? = nil


	public func setMultiRequestToken(type: String) {
		self.dict["type"] = type
	}
	
	public func setMultiRequestToken(dateOfBirth: String) {
		self.dict["dateOfBirth"] = dateOfBirth
	}
	
	public func setMultiRequestToken(gender: String) {
		self.dict["gender"] = gender
	}
	
	public func setMultiRequestToken(isAdmin: String) {
		self.dict["isAdmin"] = isAdmin
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
	
	public func setMultiRequestToken(password: String) {
		self.dict["password"] = password
	}
	
	public func setMultiRequestToken(firstName: String) {
		self.dict["firstName"] = firstName
	}
	
	public func setMultiRequestToken(lastName: String) {
		self.dict["lastName"] = lastName
	}
	
	public func setMultiRequestToken(loginEnabled: String) {
		self.dict["loginEnabled"] = loginEnabled
	}
	
	public func setMultiRequestToken(registrationInfo: String) {
		self.dict["registrationInfo"] = registrationInfo
	}
	
	public func setMultiRequestToken(attendanceInfo: String) {
		self.dict["attendanceInfo"] = attendanceInfo
	}
	
	public func setMultiRequestToken(title: String) {
		self.dict["title"] = title
	}
	
	public func setMultiRequestToken(company: String) {
		self.dict["company"] = company
	}
	
	public func setMultiRequestToken(ksPrivileges: String) {
		self.dict["ksPrivileges"] = ksPrivileges
	}
	
	public func setMultiRequestToken(encryptedSeed: String) {
		self.dict["encryptedSeed"] = encryptedSeed
	}
	
	public func setMultiRequestToken(isSsoExcluded: String) {
		self.dict["isSsoExcluded"] = isSsoExcluded
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["type"] != nil {
			type = UserType(rawValue: (dict["type"] as? Int)!)
		}
		if dict["dateOfBirth"] != nil {
			dateOfBirth = dict["dateOfBirth"] as? Int
		}
		if dict["gender"] != nil {
			gender = Gender(rawValue: (dict["gender"] as? Int)!)
		}
		if dict["isAdmin"] != nil {
			isAdmin = dict["isAdmin"] as? Bool
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
		if dict["password"] != nil {
			password = dict["password"] as? String
		}
		if dict["firstName"] != nil {
			firstName = dict["firstName"] as? String
		}
		if dict["lastName"] != nil {
			lastName = dict["lastName"] as? String
		}
		if dict["loginEnabled"] != nil {
			loginEnabled = dict["loginEnabled"] as? Bool
		}
		if dict["registrationInfo"] != nil {
			registrationInfo = dict["registrationInfo"] as? String
		}
		if dict["attendanceInfo"] != nil {
			attendanceInfo = dict["attendanceInfo"] as? String
		}
		if dict["title"] != nil {
			title = dict["title"] as? String
		}
		if dict["company"] != nil {
			company = dict["company"] as? String
		}
		if dict["ksPrivileges"] != nil {
			ksPrivileges = dict["ksPrivileges"] as? String
		}
		if dict["encryptedSeed"] != nil {
			encryptedSeed = dict["encryptedSeed"] as? String
		}
		if dict["isSsoExcluded"] != nil {
			isSsoExcluded = dict["isSsoExcluded"] as? Bool
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(type != nil) {
			dict["type"] = type!.rawValue
		}
		if(dateOfBirth != nil) {
			dict["dateOfBirth"] = dateOfBirth!
		}
		if(gender != nil) {
			dict["gender"] = gender!.rawValue
		}
		if(isAdmin != nil) {
			dict["isAdmin"] = isAdmin!
		}
		if(roleIds != nil) {
			dict["roleIds"] = roleIds!
		}
		if(isAccountOwner != nil) {
			dict["isAccountOwner"] = isAccountOwner!
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
		if(loginEnabled != nil) {
			dict["loginEnabled"] = loginEnabled!
		}
		if(registrationInfo != nil) {
			dict["registrationInfo"] = registrationInfo!
		}
		if(attendanceInfo != nil) {
			dict["attendanceInfo"] = attendanceInfo!
		}
		if(title != nil) {
			dict["title"] = title!
		}
		if(company != nil) {
			dict["company"] = company!
		}
		if(ksPrivileges != nil) {
			dict["ksPrivileges"] = ksPrivileges!
		}
		if(isSsoExcluded != nil) {
			dict["isSsoExcluded"] = isSsoExcluded!
		}
		return dict
	}
}

