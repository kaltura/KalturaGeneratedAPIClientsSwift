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

open class MicrosoftTeamsIntegrationSetting: IntegrationSetting {

	public class MicrosoftTeamsIntegrationSettingTokenizer: IntegrationSetting.IntegrationSettingTokenizer {
		
		public var clientSecret: BaseTokenizedObject {
			get {
				return self.append("clientSecret") 
			}
		}
		
		public var clientId: BaseTokenizedObject {
			get {
				return self.append("clientId") 
			}
		}
		
		public var userMetadataProfileId: BaseTokenizedObject {
			get {
				return self.append("userMetadataProfileId") 
			}
		}
		
		public var scopes: BaseTokenizedObject {
			get {
				return self.append("scopes") 
			}
		}
		
		public var encryptionKey: BaseTokenizedObject {
			get {
				return self.append("encryptionKey") 
			}
		}
	}

	public var clientSecret: String? = nil
	public var clientId: String? = nil
	/**  User-level custom metadata profile ID which will contain encrypted user-level
	  Graph access data.  */
	public var userMetadataProfileId: Int? = nil
	/**  MS Graph permission scopes for delegate auth  */
	public var scopes: String? = nil
	/**  Encryption key used for encrypting/decrypting user auth data.  */
	public var encryptionKey: String? = nil


	public func setMultiRequestToken(clientSecret: String) {
		self.dict["clientSecret"] = clientSecret
	}
	
	public func setMultiRequestToken(clientId: String) {
		self.dict["clientId"] = clientId
	}
	
	public func setMultiRequestToken(userMetadataProfileId: String) {
		self.dict["userMetadataProfileId"] = userMetadataProfileId
	}
	
	public func setMultiRequestToken(scopes: String) {
		self.dict["scopes"] = scopes
	}
	
	public func setMultiRequestToken(encryptionKey: String) {
		self.dict["encryptionKey"] = encryptionKey
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["clientSecret"] != nil {
			clientSecret = dict["clientSecret"] as? String
		}
		if dict["clientId"] != nil {
			clientId = dict["clientId"] as? String
		}
		if dict["userMetadataProfileId"] != nil {
			userMetadataProfileId = dict["userMetadataProfileId"] as? Int
		}
		if dict["scopes"] != nil {
			scopes = dict["scopes"] as? String
		}
		if dict["encryptionKey"] != nil {
			encryptionKey = dict["encryptionKey"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(clientSecret != nil) {
			dict["clientSecret"] = clientSecret!
		}
		if(clientId != nil) {
			dict["clientId"] = clientId!
		}
		if(userMetadataProfileId != nil) {
			dict["userMetadataProfileId"] = userMetadataProfileId!
		}
		if(scopes != nil) {
			dict["scopes"] = scopes!
		}
		return dict
	}
}

