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
// Copyright (C) 2006-2021  Kaltura Inc.
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

open class ActivitiBusinessProcessServer: BusinessProcessServer {

	public class ActivitiBusinessProcessServerTokenizer: BusinessProcessServer.BusinessProcessServerTokenizer {
		
		public var host: BaseTokenizedObject {
			get {
				return self.append("host") 
			}
		}
		
		public var port: BaseTokenizedObject {
			get {
				return self.append("port") 
			}
		}
		
		public var protocol_: BaseTokenizedObject {
			get {
				return self.append("protocol_") 
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
	}

	public var host: String? = nil
	public var port: Int? = nil
	public var protocol_: ActivitiBusinessProcessServerProtocol? = nil
	public var username: String? = nil
	public var password: String? = nil


	public func setMultiRequestToken(host: String) {
		self.dict["host"] = host
	}
	
	public func setMultiRequestToken(port: String) {
		self.dict["port"] = port
	}
	
	public func setMultiRequestToken(protocol_: String) {
		self.dict["protocol"] = protocol_
	}
	
	public func setMultiRequestToken(username: String) {
		self.dict["username"] = username
	}
	
	public func setMultiRequestToken(password: String) {
		self.dict["password"] = password
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["host"] != nil {
			host = dict["host"] as? String
		}
		if dict["port"] != nil {
			port = dict["port"] as? Int
		}
		if dict["protocol"] != nil {
			protocol_ = ActivitiBusinessProcessServerProtocol(rawValue: "\(dict["protocol"]!)")
		}
		if dict["username"] != nil {
			username = dict["username"] as? String
		}
		if dict["password"] != nil {
			password = dict["password"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(host != nil) {
			dict["host"] = host!
		}
		if(port != nil) {
			dict["port"] = port!
		}
		if(protocol_ != nil) {
			dict["protocol"] = protocol_!.rawValue
		}
		if(username != nil) {
			dict["username"] = username!
		}
		if(password != nil) {
			dict["password"] = password!
		}
		return dict
	}
}

