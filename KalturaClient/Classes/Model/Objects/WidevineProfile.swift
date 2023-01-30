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

open class WidevineProfile: DrmProfile {

	public class WidevineProfileTokenizer: DrmProfile.DrmProfileTokenizer {
		
		public var key: BaseTokenizedObject {
			get {
				return self.append("key") 
			}
		}
		
		public var iv: BaseTokenizedObject {
			get {
				return self.append("iv") 
			}
		}
		
		public var owner: BaseTokenizedObject {
			get {
				return self.append("owner") 
			}
		}
		
		public var portal: BaseTokenizedObject {
			get {
				return self.append("portal") 
			}
		}
		
		public var maxGop: BaseTokenizedObject {
			get {
				return self.append("maxGop") 
			}
		}
		
		public var regServerHost: BaseTokenizedObject {
			get {
				return self.append("regServerHost") 
			}
		}
	}

	public var key: String? = nil
	public var iv: String? = nil
	public var owner: String? = nil
	public var portal: String? = nil
	public var maxGop: Int? = nil
	public var regServerHost: String? = nil


	public func setMultiRequestToken(key: String) {
		self.dict["key"] = key
	}
	
	public func setMultiRequestToken(iv: String) {
		self.dict["iv"] = iv
	}
	
	public func setMultiRequestToken(owner: String) {
		self.dict["owner"] = owner
	}
	
	public func setMultiRequestToken(portal: String) {
		self.dict["portal"] = portal
	}
	
	public func setMultiRequestToken(maxGop: String) {
		self.dict["maxGop"] = maxGop
	}
	
	public func setMultiRequestToken(regServerHost: String) {
		self.dict["regServerHost"] = regServerHost
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["key"] != nil {
			key = dict["key"] as? String
		}
		if dict["iv"] != nil {
			iv = dict["iv"] as? String
		}
		if dict["owner"] != nil {
			owner = dict["owner"] as? String
		}
		if dict["portal"] != nil {
			portal = dict["portal"] as? String
		}
		if dict["maxGop"] != nil {
			maxGop = dict["maxGop"] as? Int
		}
		if dict["regServerHost"] != nil {
			regServerHost = dict["regServerHost"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(key != nil) {
			dict["key"] = key!
		}
		if(iv != nil) {
			dict["iv"] = iv!
		}
		if(owner != nil) {
			dict["owner"] = owner!
		}
		if(portal != nil) {
			dict["portal"] = portal!
		}
		if(maxGop != nil) {
			dict["maxGop"] = maxGop!
		}
		if(regServerHost != nil) {
			dict["regServerHost"] = regServerHost!
		}
		return dict
	}
}

