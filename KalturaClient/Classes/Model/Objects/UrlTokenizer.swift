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

open class UrlTokenizer: ObjectBase {

	public class UrlTokenizerTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var window: BaseTokenizedObject {
			get {
				return self.append("window") 
			}
		}
		
		public var key: BaseTokenizedObject {
			get {
				return self.append("key") 
			}
		}
		
		public var limitIpAddress: BaseTokenizedObject {
			get {
				return self.append("limitIpAddress") 
			}
		}
	}

	/**  Window  */
	public var window: Int? = nil
	/**  key  */
	public var key: String? = nil
	public var limitIpAddress: Bool? = nil


	public func setMultiRequestToken(window: String) {
		self.dict["window"] = window
	}
	
	public func setMultiRequestToken(key: String) {
		self.dict["key"] = key
	}
	
	public func setMultiRequestToken(limitIpAddress: String) {
		self.dict["limitIpAddress"] = limitIpAddress
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["window"] != nil {
			window = dict["window"] as? Int
		}
		if dict["key"] != nil {
			key = dict["key"] as? String
		}
		if dict["limitIpAddress"] != nil {
			limitIpAddress = dict["limitIpAddress"] as? Bool
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(window != nil) {
			dict["window"] = window!
		}
		if(key != nil) {
			dict["key"] = key!
		}
		if(limitIpAddress != nil) {
			dict["limitIpAddress"] = limitIpAddress!
		}
		return dict
	}
}

