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
// Copyright (C) 2006-2017  Kaltura Inc.
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

open class VerizonVcastDistributionProfile: ConfigurableDistributionProfile {

	public class VerizonVcastDistributionProfileTokenizer: ConfigurableDistributionProfile.ConfigurableDistributionProfileTokenizer {
		
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
		
		public var entitlement: BaseTokenizedObject {
			get {
				return self.append("entitlement") 
			}
		}
		
		public var priority: BaseTokenizedObject {
			get {
				return self.append("priority") 
			}
		}
		
		public var allowStreaming: BaseTokenizedObject {
			get {
				return self.append("allowStreaming") 
			}
		}
		
		public var streamingPriceCode: BaseTokenizedObject {
			get {
				return self.append("streamingPriceCode") 
			}
		}
		
		public var allowDownload: BaseTokenizedObject {
			get {
				return self.append("allowDownload") 
			}
		}
		
		public var downloadPriceCode: BaseTokenizedObject {
			get {
				return self.append("downloadPriceCode") 
			}
		}
	}

	public var ftpHost: String? = nil
	public var ftpLogin: String? = nil
	public var ftpPass: String? = nil
	public var providerName: String? = nil
	public var providerId: String? = nil
	public var entitlement: String? = nil
	public var priority: String? = nil
	public var allowStreaming: String? = nil
	public var streamingPriceCode: String? = nil
	public var allowDownload: String? = nil
	public var downloadPriceCode: String? = nil


	public func setMultiRequestToken(ftpHost: String) {
		self.dict["ftpHost"] = ftpHost
	}
	
	public func setMultiRequestToken(ftpLogin: String) {
		self.dict["ftpLogin"] = ftpLogin
	}
	
	public func setMultiRequestToken(ftpPass: String) {
		self.dict["ftpPass"] = ftpPass
	}
	
	public func setMultiRequestToken(providerName: String) {
		self.dict["providerName"] = providerName
	}
	
	public func setMultiRequestToken(providerId: String) {
		self.dict["providerId"] = providerId
	}
	
	public func setMultiRequestToken(entitlement: String) {
		self.dict["entitlement"] = entitlement
	}
	
	public func setMultiRequestToken(priority: String) {
		self.dict["priority"] = priority
	}
	
	public func setMultiRequestToken(allowStreaming: String) {
		self.dict["allowStreaming"] = allowStreaming
	}
	
	public func setMultiRequestToken(streamingPriceCode: String) {
		self.dict["streamingPriceCode"] = streamingPriceCode
	}
	
	public func setMultiRequestToken(allowDownload: String) {
		self.dict["allowDownload"] = allowDownload
	}
	
	public func setMultiRequestToken(downloadPriceCode: String) {
		self.dict["downloadPriceCode"] = downloadPriceCode
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
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
		if dict["providerName"] != nil {
			providerName = dict["providerName"] as? String
		}
		if dict["providerId"] != nil {
			providerId = dict["providerId"] as? String
		}
		if dict["entitlement"] != nil {
			entitlement = dict["entitlement"] as? String
		}
		if dict["priority"] != nil {
			priority = dict["priority"] as? String
		}
		if dict["allowStreaming"] != nil {
			allowStreaming = dict["allowStreaming"] as? String
		}
		if dict["streamingPriceCode"] != nil {
			streamingPriceCode = dict["streamingPriceCode"] as? String
		}
		if dict["allowDownload"] != nil {
			allowDownload = dict["allowDownload"] as? String
		}
		if dict["downloadPriceCode"] != nil {
			downloadPriceCode = dict["downloadPriceCode"] as? String
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
		if(providerName != nil) {
			dict["providerName"] = providerName!
		}
		if(providerId != nil) {
			dict["providerId"] = providerId!
		}
		if(entitlement != nil) {
			dict["entitlement"] = entitlement!
		}
		if(priority != nil) {
			dict["priority"] = priority!
		}
		if(allowStreaming != nil) {
			dict["allowStreaming"] = allowStreaming!
		}
		if(streamingPriceCode != nil) {
			dict["streamingPriceCode"] = streamingPriceCode!
		}
		if(allowDownload != nil) {
			dict["allowDownload"] = allowDownload!
		}
		if(downloadPriceCode != nil) {
			dict["downloadPriceCode"] = downloadPriceCode!
		}
		return dict
	}
}

