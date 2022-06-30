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

open class AccessControlScope: ObjectBase {

	public class AccessControlScopeTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var referrer: BaseTokenizedObject {
			get {
				return self.append("referrer") 
			}
		}
		
		public var ip: BaseTokenizedObject {
			get {
				return self.append("ip") 
			}
		}
		
		public var ks: BaseTokenizedObject {
			get {
				return self.append("ks") 
			}
		}
		
		public var userAgent: BaseTokenizedObject {
			get {
				return self.append("userAgent") 
			}
		}
		
		public var time: BaseTokenizedObject {
			get {
				return self.append("time") 
			}
		}
		
		public var contexts: ArrayTokenizedObject<AccessControlContextTypeHolder.AccessControlContextTypeHolderTokenizer> {
			get {
				return ArrayTokenizedObject<AccessControlContextTypeHolder.AccessControlContextTypeHolderTokenizer>(self.append("contexts"))
			} 
		}
		
		public var hashes: ArrayTokenizedObject<KeyValue.KeyValueTokenizer> {
			get {
				return ArrayTokenizedObject<KeyValue.KeyValueTokenizer>(self.append("hashes"))
			} 
		}
	}

	/**  URL to be used to test domain conditions.  */
	public var referrer: String? = nil
	/**  IP to be used to test geographic location conditions.  */
	public var ip: String? = nil
	/**  Kaltura session to be used to test session and user conditions.  */
	public var ks: String? = nil
	/**  Browser or client application to be used to test agent conditions.  */
	public var userAgent: String? = nil
	/**  Unix timestamp (In seconds) to be used to test entry scheduling, keep null to
	  use now.  */
	public var time: Int? = nil
	/**  Indicates what contexts should be tested. No contexts means any context.  */
	public var contexts: Array<AccessControlContextTypeHolder>? = nil
	/**  Array of hashes to pass to the access control profile scope  */
	public var hashes: Array<KeyValue>? = nil


	public func setMultiRequestToken(referrer: String) {
		self.dict["referrer"] = referrer
	}
	
	public func setMultiRequestToken(ip: String) {
		self.dict["ip"] = ip
	}
	
	public func setMultiRequestToken(ks: String) {
		self.dict["ks"] = ks
	}
	
	public func setMultiRequestToken(userAgent: String) {
		self.dict["userAgent"] = userAgent
	}
	
	public func setMultiRequestToken(time: String) {
		self.dict["time"] = time
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["referrer"] != nil {
			referrer = dict["referrer"] as? String
		}
		if dict["ip"] != nil {
			ip = dict["ip"] as? String
		}
		if dict["ks"] != nil {
			ks = dict["ks"] as? String
		}
		if dict["userAgent"] != nil {
			userAgent = dict["userAgent"] as? String
		}
		if dict["time"] != nil {
			time = dict["time"] as? Int
		}
		if dict["contexts"] != nil {
			contexts = try JSONParser.parse(array: dict["contexts"] as! [Any])
		}
		if dict["hashes"] != nil {
			hashes = try JSONParser.parse(array: dict["hashes"] as! [Any])
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(referrer != nil) {
			dict["referrer"] = referrer!
		}
		if(ip != nil) {
			dict["ip"] = ip!
		}
		if(ks != nil) {
			dict["ks"] = ks!
		}
		if(userAgent != nil) {
			dict["userAgent"] = userAgent!
		}
		if(time != nil) {
			dict["time"] = time!
		}
		if(contexts != nil) {
			dict["contexts"] = contexts!.map { value in value.toDictionary() }
		}
		if(hashes != nil) {
			dict["hashes"] = hashes!.map { value in value.toDictionary() }
		}
		return dict
	}
}

