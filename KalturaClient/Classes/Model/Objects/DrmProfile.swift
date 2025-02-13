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

open class DrmProfile: ObjectBase {

	public class DrmProfileTokenizer: ObjectBase.ObjectBaseTokenizer {
		
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
		
		public var name: BaseTokenizedObject {
			get {
				return self.append("name") 
			}
		}
		
		public var description: BaseTokenizedObject {
			get {
				return self.append("description") 
			}
		}
		
		public var provider: BaseTokenizedObject {
			get {
				return self.append("provider") 
			}
		}
		
		public var status: BaseTokenizedObject {
			get {
				return self.append("status") 
			}
		}
		
		public var licenseServerUrl: BaseTokenizedObject {
			get {
				return self.append("licenseServerUrl") 
			}
		}
		
		public var defaultPolicy: BaseTokenizedObject {
			get {
				return self.append("defaultPolicy") 
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
		
		public var signingKey: BaseTokenizedObject {
			get {
				return self.append("signingKey") 
			}
		}
	}

	public var id: Int? = nil
	public var partnerId: Int? = nil
	public var name: String? = nil
	public var description: String? = nil
	public var provider: DrmProviderType? = nil
	public var status: DrmProfileStatus? = nil
	public var licenseServerUrl: String? = nil
	public var defaultPolicy: String? = nil
	public var createdAt: Int? = nil
	public var updatedAt: Int? = nil
	public var signingKey: String? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(partnerId: String) {
		self.dict["partnerId"] = partnerId
	}
	
	public func setMultiRequestToken(name: String) {
		self.dict["name"] = name
	}
	
	public func setMultiRequestToken(description: String) {
		self.dict["description"] = description
	}
	
	public func setMultiRequestToken(provider: String) {
		self.dict["provider"] = provider
	}
	
	public func setMultiRequestToken(status: String) {
		self.dict["status"] = status
	}
	
	public func setMultiRequestToken(licenseServerUrl: String) {
		self.dict["licenseServerUrl"] = licenseServerUrl
	}
	
	public func setMultiRequestToken(defaultPolicy: String) {
		self.dict["defaultPolicy"] = defaultPolicy
	}
	
	public func setMultiRequestToken(createdAt: String) {
		self.dict["createdAt"] = createdAt
	}
	
	public func setMultiRequestToken(updatedAt: String) {
		self.dict["updatedAt"] = updatedAt
	}
	
	public func setMultiRequestToken(signingKey: String) {
		self.dict["signingKey"] = signingKey
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = dict["id"] as? Int
		}
		if dict["partnerId"] != nil {
			partnerId = dict["partnerId"] as? Int
		}
		if dict["name"] != nil {
			name = dict["name"] as? String
		}
		if dict["description"] != nil {
			description = dict["description"] as? String
		}
		if dict["provider"] != nil {
			provider = DrmProviderType(rawValue: "\(dict["provider"]!)")
		}
		if dict["status"] != nil {
			status = DrmProfileStatus(rawValue: (dict["status"] as? Int)!)
		}
		if dict["licenseServerUrl"] != nil {
			licenseServerUrl = dict["licenseServerUrl"] as? String
		}
		if dict["defaultPolicy"] != nil {
			defaultPolicy = dict["defaultPolicy"] as? String
		}
		if dict["createdAt"] != nil {
			createdAt = dict["createdAt"] as? Int
		}
		if dict["updatedAt"] != nil {
			updatedAt = dict["updatedAt"] as? Int
		}
		if dict["signingKey"] != nil {
			signingKey = dict["signingKey"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(partnerId != nil) {
			dict["partnerId"] = partnerId!
		}
		if(name != nil) {
			dict["name"] = name!
		}
		if(description != nil) {
			dict["description"] = description!
		}
		if(provider != nil) {
			dict["provider"] = provider!.rawValue
		}
		if(status != nil) {
			dict["status"] = status!.rawValue
		}
		if(licenseServerUrl != nil) {
			dict["licenseServerUrl"] = licenseServerUrl!
		}
		if(defaultPolicy != nil) {
			dict["defaultPolicy"] = defaultPolicy!
		}
		if(signingKey != nil) {
			dict["signingKey"] = signingKey!
		}
		return dict
	}
}

