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
// Copyright (C) 2006-2020  Kaltura Inc.
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

open class FacebookDistributionProfile: ConfigurableDistributionProfile {

	public class FacebookDistributionProfileTokenizer: ConfigurableDistributionProfile.ConfigurableDistributionProfileTokenizer {
		
		public var apiAuthorizeUrl: BaseTokenizedObject {
			get {
				return self.append("apiAuthorizeUrl") 
			}
		}
		
		public var pageId: BaseTokenizedObject {
			get {
				return self.append("pageId") 
			}
		}
		
		public var pageAccessToken: BaseTokenizedObject {
			get {
				return self.append("pageAccessToken") 
			}
		}
		
		public var userAccessToken: BaseTokenizedObject {
			get {
				return self.append("userAccessToken") 
			}
		}
		
		public var state: BaseTokenizedObject {
			get {
				return self.append("state") 
			}
		}
		
		public var permissions: BaseTokenizedObject {
			get {
				return self.append("permissions") 
			}
		}
		
		public var reRequestPermissions: BaseTokenizedObject {
			get {
				return self.append("reRequestPermissions") 
			}
		}
	}

	public var apiAuthorizeUrl: String? = nil
	public var pageId: String? = nil
	public var pageAccessToken: String? = nil
	public var userAccessToken: String? = nil
	public var state: String? = nil
	public var permissions: String? = nil
	public var reRequestPermissions: Int? = nil


	public func setMultiRequestToken(apiAuthorizeUrl: String) {
		self.dict["apiAuthorizeUrl"] = apiAuthorizeUrl
	}
	
	public func setMultiRequestToken(pageId: String) {
		self.dict["pageId"] = pageId
	}
	
	public func setMultiRequestToken(pageAccessToken: String) {
		self.dict["pageAccessToken"] = pageAccessToken
	}
	
	public func setMultiRequestToken(userAccessToken: String) {
		self.dict["userAccessToken"] = userAccessToken
	}
	
	public func setMultiRequestToken(state: String) {
		self.dict["state"] = state
	}
	
	public func setMultiRequestToken(permissions: String) {
		self.dict["permissions"] = permissions
	}
	
	public func setMultiRequestToken(reRequestPermissions: String) {
		self.dict["reRequestPermissions"] = reRequestPermissions
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["apiAuthorizeUrl"] != nil {
			apiAuthorizeUrl = dict["apiAuthorizeUrl"] as? String
		}
		if dict["pageId"] != nil {
			pageId = dict["pageId"] as? String
		}
		if dict["pageAccessToken"] != nil {
			pageAccessToken = dict["pageAccessToken"] as? String
		}
		if dict["userAccessToken"] != nil {
			userAccessToken = dict["userAccessToken"] as? String
		}
		if dict["state"] != nil {
			state = dict["state"] as? String
		}
		if dict["permissions"] != nil {
			permissions = dict["permissions"] as? String
		}
		if dict["reRequestPermissions"] != nil {
			reRequestPermissions = dict["reRequestPermissions"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(apiAuthorizeUrl != nil) {
			dict["apiAuthorizeUrl"] = apiAuthorizeUrl!
		}
		if(pageId != nil) {
			dict["pageId"] = pageId!
		}
		if(pageAccessToken != nil) {
			dict["pageAccessToken"] = pageAccessToken!
		}
		if(userAccessToken != nil) {
			dict["userAccessToken"] = userAccessToken!
		}
		if(state != nil) {
			dict["state"] = state!
		}
		if(permissions != nil) {
			dict["permissions"] = permissions!
		}
		if(reRequestPermissions != nil) {
			dict["reRequestPermissions"] = reRequestPermissions!
		}
		return dict
	}
}

