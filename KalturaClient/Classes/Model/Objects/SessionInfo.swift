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

open class SessionInfo: ObjectBase {

	public class SessionInfoTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var ks: BaseTokenizedObject {
			get {
				return self.append("ks") 
			}
		}
		
		public var sessionType: BaseTokenizedObject {
			get {
				return self.append("sessionType") 
			}
		}
		
		public var partnerId: BaseTokenizedObject {
			get {
				return self.append("partnerId") 
			}
		}
		
		public var userId: BaseTokenizedObject {
			get {
				return self.append("userId") 
			}
		}
		
		public var expiry: BaseTokenizedObject {
			get {
				return self.append("expiry") 
			}
		}
		
		public var privileges: BaseTokenizedObject {
			get {
				return self.append("privileges") 
			}
		}
	}

	public var ks: String? = nil
	public var sessionType: SessionType? = nil
	public var partnerId: Int? = nil
	public var userId: String? = nil
	public var expiry: Int? = nil
	public var privileges: String? = nil


	public func setMultiRequestToken(ks: String) {
		self.dict["ks"] = ks
	}
	
	public func setMultiRequestToken(sessionType: String) {
		self.dict["sessionType"] = sessionType
	}
	
	public func setMultiRequestToken(partnerId: String) {
		self.dict["partnerId"] = partnerId
	}
	
	public func setMultiRequestToken(userId: String) {
		self.dict["userId"] = userId
	}
	
	public func setMultiRequestToken(expiry: String) {
		self.dict["expiry"] = expiry
	}
	
	public func setMultiRequestToken(privileges: String) {
		self.dict["privileges"] = privileges
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["ks"] != nil {
			ks = dict["ks"] as? String
		}
		if dict["sessionType"] != nil {
			sessionType = SessionType(rawValue: (dict["sessionType"] as? Int)!)
		}
		if dict["partnerId"] != nil {
			partnerId = dict["partnerId"] as? Int
		}
		if dict["userId"] != nil {
			userId = dict["userId"] as? String
		}
		if dict["expiry"] != nil {
			expiry = dict["expiry"] as? Int
		}
		if dict["privileges"] != nil {
			privileges = dict["privileges"] as? String
		}

	}

}

