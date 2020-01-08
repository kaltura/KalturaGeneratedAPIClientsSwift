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

open class CuePointFilter: CuePointBaseFilter {

	public class CuePointFilterTokenizer: CuePointBaseFilter.CuePointBaseFilterTokenizer {
		
		public var freeText: BaseTokenizedObject {
			get {
				return self.append("freeText") 
			}
		}
		
		public var userIdEqualCurrent: BaseTokenizedObject {
			get {
				return self.append("userIdEqualCurrent") 
			}
		}
		
		public var userIdCurrent: BaseTokenizedObject {
			get {
				return self.append("userIdCurrent") 
			}
		}
	}

	public var freeText: String? = nil
	public var userIdEqualCurrent: Bool? = nil
	public var userIdCurrent: Bool? = nil


	public func setMultiRequestToken(freeText: String) {
		self.dict["freeText"] = freeText
	}
	
	public func setMultiRequestToken(userIdEqualCurrent: String) {
		self.dict["userIdEqualCurrent"] = userIdEqualCurrent
	}
	
	public func setMultiRequestToken(userIdCurrent: String) {
		self.dict["userIdCurrent"] = userIdCurrent
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["freeText"] != nil {
			freeText = dict["freeText"] as? String
		}
		if dict["userIdEqualCurrent"] != nil {
			userIdEqualCurrent = dict["userIdEqualCurrent"] as? Bool
		}
		if dict["userIdCurrent"] != nil {
			userIdCurrent = dict["userIdCurrent"] as? Bool
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(freeText != nil) {
			dict["freeText"] = freeText!
		}
		if(userIdEqualCurrent != nil) {
			dict["userIdEqualCurrent"] = userIdEqualCurrent!
		}
		if(userIdCurrent != nil) {
			dict["userIdCurrent"] = userIdCurrent!
		}
		return dict
	}
}

