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

open class PushToNewsDistributionProfile: ConfigurableDistributionProfile {

	public class PushToNewsDistributionProfileTokenizer: ConfigurableDistributionProfile.ConfigurableDistributionProfileTokenizer {
		
		public var protocol_: BaseTokenizedObject {
			get {
				return self.append("protocol_") 
			}
		}
		
		public var host: BaseTokenizedObject {
			get {
				return self.append("host") 
			}
		}
		
		public var ips: BaseTokenizedObject {
			get {
				return self.append("ips") 
			}
		}
		
		public var port: BaseTokenizedObject {
			get {
				return self.append("port") 
			}
		}
		
		public var basePath: BaseTokenizedObject {
			get {
				return self.append("basePath") 
			}
		}
		
		public var username: BaseTokenizedObject {
			get {
				return self.append("username") 
			}
		}
		
		public var password: BaseTokenizedObject {
			get {
				return self.append("password") 
			}
		}
		
		public var certificateKey: BaseTokenizedObject {
			get {
				return self.append("certificateKey") 
			}
		}
		
		public var bodyXslt: BaseTokenizedObject {
			get {
				return self.append("bodyXslt") 
			}
		}
		
		public var recentNewsTimeInterval: BaseTokenizedObject {
			get {
				return self.append("recentNewsTimeInterval") 
			}
		}
	}

	public var protocol_: DistributionProtocol? = nil
	public var host: String? = nil
	public var ips: String? = nil
	public var port: Int? = nil
	public var basePath: String? = nil
	public var username: String? = nil
	public var password: String? = nil
	public var certificateKey: String? = nil
	public var bodyXslt: String? = nil
	public var recentNewsTimeInterval: Int? = nil


	public func setMultiRequestToken(protocol_: String) {
		self.dict["protocol"] = protocol_
	}
	
	public func setMultiRequestToken(host: String) {
		self.dict["host"] = host
	}
	
	public func setMultiRequestToken(ips: String) {
		self.dict["ips"] = ips
	}
	
	public func setMultiRequestToken(port: String) {
		self.dict["port"] = port
	}
	
	public func setMultiRequestToken(basePath: String) {
		self.dict["basePath"] = basePath
	}
	
	public func setMultiRequestToken(username: String) {
		self.dict["username"] = username
	}
	
	public func setMultiRequestToken(password: String) {
		self.dict["password"] = password
	}
	
	public func setMultiRequestToken(certificateKey: String) {
		self.dict["certificateKey"] = certificateKey
	}
	
	public func setMultiRequestToken(bodyXslt: String) {
		self.dict["bodyXslt"] = bodyXslt
	}
	
	public func setMultiRequestToken(recentNewsTimeInterval: String) {
		self.dict["recentNewsTimeInterval"] = recentNewsTimeInterval
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["protocol"] != nil {
			protocol_ = DistributionProtocol(rawValue: (dict["protocol"] as? Int)!)
		}
		if dict["host"] != nil {
			host = dict["host"] as? String
		}
		if dict["ips"] != nil {
			ips = dict["ips"] as? String
		}
		if dict["port"] != nil {
			port = dict["port"] as? Int
		}
		if dict["basePath"] != nil {
			basePath = dict["basePath"] as? String
		}
		if dict["username"] != nil {
			username = dict["username"] as? String
		}
		if dict["password"] != nil {
			password = dict["password"] as? String
		}
		if dict["certificateKey"] != nil {
			certificateKey = dict["certificateKey"] as? String
		}
		if dict["bodyXslt"] != nil {
			bodyXslt = dict["bodyXslt"] as? String
		}
		if dict["recentNewsTimeInterval"] != nil {
			recentNewsTimeInterval = dict["recentNewsTimeInterval"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(protocol_ != nil) {
			dict["protocol"] = protocol_!.rawValue
		}
		if(host != nil) {
			dict["host"] = host!
		}
		if(ips != nil) {
			dict["ips"] = ips!
		}
		if(port != nil) {
			dict["port"] = port!
		}
		if(basePath != nil) {
			dict["basePath"] = basePath!
		}
		if(username != nil) {
			dict["username"] = username!
		}
		if(password != nil) {
			dict["password"] = password!
		}
		if(certificateKey != nil) {
			dict["certificateKey"] = certificateKey!
		}
		if(bodyXslt != nil) {
			dict["bodyXslt"] = bodyXslt!
		}
		if(recentNewsTimeInterval != nil) {
			dict["recentNewsTimeInterval"] = recentNewsTimeInterval!
		}
		return dict
	}
}

