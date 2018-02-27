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
// Copyright (C) 2006-2018  Kaltura Inc.
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

open class CEError: ObjectBase {

	public class CEErrorTokenizer: ObjectBase.ObjectBaseTokenizer {
		
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
		
		public var browser: BaseTokenizedObject {
			get {
				return self.append("browser") 
			}
		}
		
		public var serverIp: BaseTokenizedObject {
			get {
				return self.append("serverIp") 
			}
		}
		
		public var serverOs: BaseTokenizedObject {
			get {
				return self.append("serverOs") 
			}
		}
		
		public var phpVersion: BaseTokenizedObject {
			get {
				return self.append("phpVersion") 
			}
		}
		
		public var ceAdminEmail: BaseTokenizedObject {
			get {
				return self.append("ceAdminEmail") 
			}
		}
		
		public var type: BaseTokenizedObject {
			get {
				return self.append("type") 
			}
		}
		
		public var description: BaseTokenizedObject {
			get {
				return self.append("description") 
			}
		}
		
		public var data: BaseTokenizedObject {
			get {
				return self.append("data") 
			}
		}
	}

	public var id: String? = nil
	public var partnerId: Int? = nil
	public var browser: String? = nil
	public var serverIp: String? = nil
	public var serverOs: String? = nil
	public var phpVersion: String? = nil
	public var ceAdminEmail: String? = nil
	public var type: String? = nil
	public var description: String? = nil
	public var data: String? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(partnerId: String) {
		self.dict["partnerId"] = partnerId
	}
	
	public func setMultiRequestToken(browser: String) {
		self.dict["browser"] = browser
	}
	
	public func setMultiRequestToken(serverIp: String) {
		self.dict["serverIp"] = serverIp
	}
	
	public func setMultiRequestToken(serverOs: String) {
		self.dict["serverOs"] = serverOs
	}
	
	public func setMultiRequestToken(phpVersion: String) {
		self.dict["phpVersion"] = phpVersion
	}
	
	public func setMultiRequestToken(ceAdminEmail: String) {
		self.dict["ceAdminEmail"] = ceAdminEmail
	}
	
	public func setMultiRequestToken(type: String) {
		self.dict["type"] = type
	}
	
	public func setMultiRequestToken(description: String) {
		self.dict["description"] = description
	}
	
	public func setMultiRequestToken(data: String) {
		self.dict["data"] = data
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = dict["id"] as? String
		}
		if dict["partnerId"] != nil {
			partnerId = dict["partnerId"] as? Int
		}
		if dict["browser"] != nil {
			browser = dict["browser"] as? String
		}
		if dict["serverIp"] != nil {
			serverIp = dict["serverIp"] as? String
		}
		if dict["serverOs"] != nil {
			serverOs = dict["serverOs"] as? String
		}
		if dict["phpVersion"] != nil {
			phpVersion = dict["phpVersion"] as? String
		}
		if dict["ceAdminEmail"] != nil {
			ceAdminEmail = dict["ceAdminEmail"] as? String
		}
		if dict["type"] != nil {
			type = dict["type"] as? String
		}
		if dict["description"] != nil {
			description = dict["description"] as? String
		}
		if dict["data"] != nil {
			data = dict["data"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(partnerId != nil) {
			dict["partnerId"] = partnerId!
		}
		if(browser != nil) {
			dict["browser"] = browser!
		}
		if(serverIp != nil) {
			dict["serverIp"] = serverIp!
		}
		if(serverOs != nil) {
			dict["serverOs"] = serverOs!
		}
		if(phpVersion != nil) {
			dict["phpVersion"] = phpVersion!
		}
		if(ceAdminEmail != nil) {
			dict["ceAdminEmail"] = ceAdminEmail!
		}
		if(type != nil) {
			dict["type"] = type!
		}
		if(description != nil) {
			dict["description"] = description!
		}
		if(data != nil) {
			dict["data"] = data!
		}
		return dict
	}
}

