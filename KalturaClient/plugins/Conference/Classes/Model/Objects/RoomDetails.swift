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

open class RoomDetails: ObjectBase {

	public class RoomDetailsTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var serverUrl: BaseTokenizedObject {
			get {
				return self.append("serverUrl") 
			}
		}
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
		
		public var token: BaseTokenizedObject {
			get {
				return self.append("token") 
			}
		}
		
		public var expiry: BaseTokenizedObject {
			get {
				return self.append("expiry") 
			}
		}
		
		public var serverName: BaseTokenizedObject {
			get {
				return self.append("serverName") 
			}
		}
	}

	public var serverUrl: String? = nil
	public var entryId: String? = nil
	public var token: String? = nil
	public var expiry: Int? = nil
	public var serverName: String? = nil


	public func setMultiRequestToken(serverUrl: String) {
		self.dict["serverUrl"] = serverUrl
	}
	
	public func setMultiRequestToken(entryId: String) {
		self.dict["entryId"] = entryId
	}
	
	public func setMultiRequestToken(token: String) {
		self.dict["token"] = token
	}
	
	public func setMultiRequestToken(expiry: String) {
		self.dict["expiry"] = expiry
	}
	
	public func setMultiRequestToken(serverName: String) {
		self.dict["serverName"] = serverName
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["serverUrl"] != nil {
			serverUrl = dict["serverUrl"] as? String
		}
		if dict["entryId"] != nil {
			entryId = dict["entryId"] as? String
		}
		if dict["token"] != nil {
			token = dict["token"] as? String
		}
		if dict["expiry"] != nil {
			expiry = dict["expiry"] as? Int
		}
		if dict["serverName"] != nil {
			serverName = dict["serverName"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(serverUrl != nil) {
			dict["serverUrl"] = serverUrl!
		}
		if(entryId != nil) {
			dict["entryId"] = entryId!
		}
		if(token != nil) {
			dict["token"] = token!
		}
		if(expiry != nil) {
			dict["expiry"] = expiry!
		}
		if(serverName != nil) {
			dict["serverName"] = serverName!
		}
		return dict
	}
}

