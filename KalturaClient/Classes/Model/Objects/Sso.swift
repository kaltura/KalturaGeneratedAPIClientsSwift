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
 * This class was generated using generate.php
 * against an XML schema provided by Kaltura.
 * 
 * MANUAL CHANGES TO THIS CLASS WILL BE OVERWRITTEN.
 */

open class Sso: ObjectBase {

	public class SsoTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var applicationType: BaseTokenizedObject {
			get {
				return self.append("applicationType") 
			}
		}
		
		public var partnerId: BaseTokenizedObject {
			get {
				return self.append("partnerId") 
			}
		}
		
		public var domain: BaseTokenizedObject {
			get {
				return self.append("domain") 
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
		
		public var redirectUrl: BaseTokenizedObject {
			get {
				return self.append("redirectUrl") 
			}
		}
		
		public var data: BaseTokenizedObject {
			get {
				return self.append("data") 
			}
		}
	}

	public var id: Int? = nil
	public var applicationType: String? = nil
	public var partnerId: Int? = nil
	public var domain: String? = nil
	public var status: SsoStatus? = nil
	/**  Creation date as Unix timestamp (In seconds)  */
	public var createdAt: Int? = nil
	/**  Last update date as Unix timestamp (In seconds)  */
	public var updatedAt: Int? = nil
	/**  Redirect URL for a specific application type and (partner id or domain)  */
	public var redirectUrl: String? = nil
	public var data: String? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(applicationType: String) {
		self.dict["applicationType"] = applicationType
	}
	
	public func setMultiRequestToken(partnerId: String) {
		self.dict["partnerId"] = partnerId
	}
	
	public func setMultiRequestToken(domain: String) {
		self.dict["domain"] = domain
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
	
	public func setMultiRequestToken(redirectUrl: String) {
		self.dict["redirectUrl"] = redirectUrl
	}
	
	public func setMultiRequestToken(data: String) {
		self.dict["data"] = data
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = dict["id"] as? Int
		}
		if dict["applicationType"] != nil {
			applicationType = dict["applicationType"] as? String
		}
		if dict["partnerId"] != nil {
			partnerId = dict["partnerId"] as? Int
		}
		if dict["domain"] != nil {
			domain = dict["domain"] as? String
		}
		if dict["status"] != nil {
			status = SsoStatus(rawValue: (dict["status"] as? Int)!)
		}
		if dict["createdAt"] != nil {
			createdAt = dict["createdAt"] as? Int
		}
		if dict["updatedAt"] != nil {
			updatedAt = dict["updatedAt"] as? Int
		}
		if dict["redirectUrl"] != nil {
			redirectUrl = dict["redirectUrl"] as? String
		}
		if dict["data"] != nil {
			data = dict["data"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(applicationType != nil) {
			dict["applicationType"] = applicationType!
		}
		if(partnerId != nil) {
			dict["partnerId"] = partnerId!
		}
		if(domain != nil) {
			dict["domain"] = domain!
		}
		if(status != nil) {
			dict["status"] = status!.rawValue
		}
		if(redirectUrl != nil) {
			dict["redirectUrl"] = redirectUrl!
		}
		if(data != nil) {
			dict["data"] = data!
		}
		return dict
	}
}

