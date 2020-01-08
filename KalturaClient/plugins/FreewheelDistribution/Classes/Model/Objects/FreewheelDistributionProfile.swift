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

open class FreewheelDistributionProfile: DistributionProfile {

	public class FreewheelDistributionProfileTokenizer: DistributionProfile.DistributionProfileTokenizer {
		
		public var apikey: BaseTokenizedObject {
			get {
				return self.append("apikey") 
			}
		}
		
		public var email: BaseTokenizedObject {
			get {
				return self.append("email") 
			}
		}
		
		public var sftpPass: BaseTokenizedObject {
			get {
				return self.append("sftpPass") 
			}
		}
		
		public var sftpLogin: BaseTokenizedObject {
			get {
				return self.append("sftpLogin") 
			}
		}
		
		public var accountId: BaseTokenizedObject {
			get {
				return self.append("accountId") 
			}
		}
		
		public var metadataProfileId: BaseTokenizedObject {
			get {
				return self.append("metadataProfileId") 
			}
		}
	}

	public var apikey: String? = nil
	public var email: String? = nil
	public var sftpPass: String? = nil
	public var sftpLogin: String? = nil
	public var accountId: String? = nil
	public var metadataProfileId: Int? = nil


	public func setMultiRequestToken(apikey: String) {
		self.dict["apikey"] = apikey
	}
	
	public func setMultiRequestToken(email: String) {
		self.dict["email"] = email
	}
	
	public func setMultiRequestToken(sftpPass: String) {
		self.dict["sftpPass"] = sftpPass
	}
	
	public func setMultiRequestToken(sftpLogin: String) {
		self.dict["sftpLogin"] = sftpLogin
	}
	
	public func setMultiRequestToken(accountId: String) {
		self.dict["accountId"] = accountId
	}
	
	public func setMultiRequestToken(metadataProfileId: String) {
		self.dict["metadataProfileId"] = metadataProfileId
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["apikey"] != nil {
			apikey = dict["apikey"] as? String
		}
		if dict["email"] != nil {
			email = dict["email"] as? String
		}
		if dict["sftpPass"] != nil {
			sftpPass = dict["sftpPass"] as? String
		}
		if dict["sftpLogin"] != nil {
			sftpLogin = dict["sftpLogin"] as? String
		}
		if dict["accountId"] != nil {
			accountId = dict["accountId"] as? String
		}
		if dict["metadataProfileId"] != nil {
			metadataProfileId = dict["metadataProfileId"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(apikey != nil) {
			dict["apikey"] = apikey!
		}
		if(email != nil) {
			dict["email"] = email!
		}
		if(sftpPass != nil) {
			dict["sftpPass"] = sftpPass!
		}
		if(sftpLogin != nil) {
			dict["sftpLogin"] = sftpLogin!
		}
		if(accountId != nil) {
			dict["accountId"] = accountId!
		}
		if(metadataProfileId != nil) {
			dict["metadataProfileId"] = metadataProfileId!
		}
		return dict
	}
}

