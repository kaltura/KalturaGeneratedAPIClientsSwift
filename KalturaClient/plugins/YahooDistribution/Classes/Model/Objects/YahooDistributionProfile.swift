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

open class YahooDistributionProfile: ConfigurableDistributionProfile {

	public class YahooDistributionProfileTokenizer: ConfigurableDistributionProfile.ConfigurableDistributionProfileTokenizer {
		
		public var ftpPath: BaseTokenizedObject {
			get {
				return self.append("ftpPath") 
			}
		}
		
		public var ftpUsername: BaseTokenizedObject {
			get {
				return self.append("ftpUsername") 
			}
		}
		
		public var ftpPassword: BaseTokenizedObject {
			get {
				return self.append("ftpPassword") 
			}
		}
		
		public var ftpHost: BaseTokenizedObject {
			get {
				return self.append("ftpHost") 
			}
		}
		
		public var contactTelephone: BaseTokenizedObject {
			get {
				return self.append("contactTelephone") 
			}
		}
		
		public var contactEmail: BaseTokenizedObject {
			get {
				return self.append("contactEmail") 
			}
		}
		
		public var processFeed: BaseTokenizedObject {
			get {
				return self.append("processFeed") 
			}
		}
	}

	public var ftpPath: String? = nil
	public var ftpUsername: String? = nil
	public var ftpPassword: String? = nil
	public var ftpHost: String? = nil
	public var contactTelephone: String? = nil
	public var contactEmail: String? = nil
	public var processFeed: YahooDistributionProcessFeedActionStatus? = nil


	public func setMultiRequestToken(ftpPath: String) {
		self.dict["ftpPath"] = ftpPath
	}
	
	public func setMultiRequestToken(ftpUsername: String) {
		self.dict["ftpUsername"] = ftpUsername
	}
	
	public func setMultiRequestToken(ftpPassword: String) {
		self.dict["ftpPassword"] = ftpPassword
	}
	
	public func setMultiRequestToken(ftpHost: String) {
		self.dict["ftpHost"] = ftpHost
	}
	
	public func setMultiRequestToken(contactTelephone: String) {
		self.dict["contactTelephone"] = contactTelephone
	}
	
	public func setMultiRequestToken(contactEmail: String) {
		self.dict["contactEmail"] = contactEmail
	}
	
	public func setMultiRequestToken(processFeed: String) {
		self.dict["processFeed"] = processFeed
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["ftpPath"] != nil {
			ftpPath = dict["ftpPath"] as? String
		}
		if dict["ftpUsername"] != nil {
			ftpUsername = dict["ftpUsername"] as? String
		}
		if dict["ftpPassword"] != nil {
			ftpPassword = dict["ftpPassword"] as? String
		}
		if dict["ftpHost"] != nil {
			ftpHost = dict["ftpHost"] as? String
		}
		if dict["contactTelephone"] != nil {
			contactTelephone = dict["contactTelephone"] as? String
		}
		if dict["contactEmail"] != nil {
			contactEmail = dict["contactEmail"] as? String
		}
		if dict["processFeed"] != nil {
			processFeed = YahooDistributionProcessFeedActionStatus(rawValue: (dict["processFeed"] as? Int)!)
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(ftpPath != nil) {
			dict["ftpPath"] = ftpPath!
		}
		if(ftpUsername != nil) {
			dict["ftpUsername"] = ftpUsername!
		}
		if(ftpPassword != nil) {
			dict["ftpPassword"] = ftpPassword!
		}
		if(ftpHost != nil) {
			dict["ftpHost"] = ftpHost!
		}
		if(contactTelephone != nil) {
			dict["contactTelephone"] = contactTelephone!
		}
		if(contactEmail != nil) {
			dict["contactEmail"] = contactEmail!
		}
		if(processFeed != nil) {
			dict["processFeed"] = processFeed!.rawValue
		}
		return dict
	}
}

