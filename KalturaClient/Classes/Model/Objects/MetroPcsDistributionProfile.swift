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

open class MetroPcsDistributionProfile: ConfigurableDistributionProfile {

	public class MetroPcsDistributionProfileTokenizer: ConfigurableDistributionProfile.ConfigurableDistributionProfileTokenizer {
		
		public var ftpHost: BaseTokenizedObject {
			get {
				return self.append("ftpHost") 
			}
		}
		
		public var ftpLogin: BaseTokenizedObject {
			get {
				return self.append("ftpLogin") 
			}
		}
		
		public var ftpPass: BaseTokenizedObject {
			get {
				return self.append("ftpPass") 
			}
		}
		
		public var ftpPath: BaseTokenizedObject {
			get {
				return self.append("ftpPath") 
			}
		}
		
		public var providerName: BaseTokenizedObject {
			get {
				return self.append("providerName") 
			}
		}
		
		public var providerId: BaseTokenizedObject {
			get {
				return self.append("providerId") 
			}
		}
		
		public var copyright: BaseTokenizedObject {
			get {
				return self.append("copyright") 
			}
		}
		
		public var entitlements: BaseTokenizedObject {
			get {
				return self.append("entitlements") 
			}
		}
		
		public var rating: BaseTokenizedObject {
			get {
				return self.append("rating") 
			}
		}
		
		public var itemType: BaseTokenizedObject {
			get {
				return self.append("itemType") 
			}
		}
	}

	public var ftpHost: String? = nil
	public var ftpLogin: String? = nil
	public var ftpPass: String? = nil
	public var ftpPath: String? = nil
	public var providerName: String? = nil
	public var providerId: String? = nil
	public var copyright: String? = nil
	public var entitlements: String? = nil
	public var rating: String? = nil
	public var itemType: String? = nil


	public func setMultiRequestToken(ftpHost: String) {
		self.dict["ftpHost"] = ftpHost
	}
	
	public func setMultiRequestToken(ftpLogin: String) {
		self.dict["ftpLogin"] = ftpLogin
	}
	
	public func setMultiRequestToken(ftpPass: String) {
		self.dict["ftpPass"] = ftpPass
	}
	
	public func setMultiRequestToken(ftpPath: String) {
		self.dict["ftpPath"] = ftpPath
	}
	
	public func setMultiRequestToken(providerName: String) {
		self.dict["providerName"] = providerName
	}
	
	public func setMultiRequestToken(providerId: String) {
		self.dict["providerId"] = providerId
	}
	
	public func setMultiRequestToken(copyright: String) {
		self.dict["copyright"] = copyright
	}
	
	public func setMultiRequestToken(entitlements: String) {
		self.dict["entitlements"] = entitlements
	}
	
	public func setMultiRequestToken(rating: String) {
		self.dict["rating"] = rating
	}
	
	public func setMultiRequestToken(itemType: String) {
		self.dict["itemType"] = itemType
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["ftpHost"] != nil {
			ftpHost = dict["ftpHost"] as? String
		}
		if dict["ftpLogin"] != nil {
			ftpLogin = dict["ftpLogin"] as? String
		}
		if dict["ftpPass"] != nil {
			ftpPass = dict["ftpPass"] as? String
		}
		if dict["ftpPath"] != nil {
			ftpPath = dict["ftpPath"] as? String
		}
		if dict["providerName"] != nil {
			providerName = dict["providerName"] as? String
		}
		if dict["providerId"] != nil {
			providerId = dict["providerId"] as? String
		}
		if dict["copyright"] != nil {
			copyright = dict["copyright"] as? String
		}
		if dict["entitlements"] != nil {
			entitlements = dict["entitlements"] as? String
		}
		if dict["rating"] != nil {
			rating = dict["rating"] as? String
		}
		if dict["itemType"] != nil {
			itemType = dict["itemType"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(ftpHost != nil) {
			dict["ftpHost"] = ftpHost!
		}
		if(ftpLogin != nil) {
			dict["ftpLogin"] = ftpLogin!
		}
		if(ftpPass != nil) {
			dict["ftpPass"] = ftpPass!
		}
		if(ftpPath != nil) {
			dict["ftpPath"] = ftpPath!
		}
		if(providerName != nil) {
			dict["providerName"] = providerName!
		}
		if(providerId != nil) {
			dict["providerId"] = providerId!
		}
		if(copyright != nil) {
			dict["copyright"] = copyright!
		}
		if(entitlements != nil) {
			dict["entitlements"] = entitlements!
		}
		if(rating != nil) {
			dict["rating"] = rating!
		}
		if(itemType != nil) {
			dict["itemType"] = itemType!
		}
		return dict
	}
}

