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
// Copyright (C) 2006-2020  Kaltura Inc.
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

open class UrlTokenizerAkamaiRtmp: UrlTokenizer {

	public class UrlTokenizerAkamaiRtmpTokenizer: UrlTokenizer.UrlTokenizerTokenizer {
		
		public var profile: BaseTokenizedObject {
			get {
				return self.append("profile") 
			}
		}
		
		public var type: BaseTokenizedObject {
			get {
				return self.append("type") 
			}
		}
		
		public var aifp: BaseTokenizedObject {
			get {
				return self.append("aifp") 
			}
		}
		
		public var usePrefix: BaseTokenizedObject {
			get {
				return self.append("usePrefix") 
			}
		}
	}

	/**  profile  */
	public var profile: String? = nil
	/**  Type  */
	public var type: String? = nil
	public var aifp: String? = nil
	public var usePrefix: Bool? = nil


	public func setMultiRequestToken(profile: String) {
		self.dict["profile"] = profile
	}
	
	public func setMultiRequestToken(type: String) {
		self.dict["type"] = type
	}
	
	public func setMultiRequestToken(aifp: String) {
		self.dict["aifp"] = aifp
	}
	
	public func setMultiRequestToken(usePrefix: String) {
		self.dict["usePrefix"] = usePrefix
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["profile"] != nil {
			profile = dict["profile"] as? String
		}
		if dict["type"] != nil {
			type = dict["type"] as? String
		}
		if dict["aifp"] != nil {
			aifp = dict["aifp"] as? String
		}
		if dict["usePrefix"] != nil {
			usePrefix = dict["usePrefix"] as? Bool
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(profile != nil) {
			dict["profile"] = profile!
		}
		if(type != nil) {
			dict["type"] = type!
		}
		if(aifp != nil) {
			dict["aifp"] = aifp!
		}
		if(usePrefix != nil) {
			dict["usePrefix"] = usePrefix!
		}
		return dict
	}
}

