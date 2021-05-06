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

open class EntryCuePointSearchFilter: SearchItem {

	public class EntryCuePointSearchFilterTokenizer: SearchItem.SearchItemTokenizer {
		
		public var cuePointsFreeText: BaseTokenizedObject {
			get {
				return self.append("cuePointsFreeText") 
			}
		}
		
		public var cuePointTypeIn: BaseTokenizedObject {
			get {
				return self.append("cuePointTypeIn") 
			}
		}
		
		public var cuePointSubTypeEqual: BaseTokenizedObject {
			get {
				return self.append("cuePointSubTypeEqual") 
			}
		}
	}

	public var cuePointsFreeText: String? = nil
	public var cuePointTypeIn: String? = nil
	public var cuePointSubTypeEqual: Int? = nil


	public func setMultiRequestToken(cuePointsFreeText: String) {
		self.dict["cuePointsFreeText"] = cuePointsFreeText
	}
	
	public func setMultiRequestToken(cuePointTypeIn: String) {
		self.dict["cuePointTypeIn"] = cuePointTypeIn
	}
	
	public func setMultiRequestToken(cuePointSubTypeEqual: String) {
		self.dict["cuePointSubTypeEqual"] = cuePointSubTypeEqual
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["cuePointsFreeText"] != nil {
			cuePointsFreeText = dict["cuePointsFreeText"] as? String
		}
		if dict["cuePointTypeIn"] != nil {
			cuePointTypeIn = dict["cuePointTypeIn"] as? String
		}
		if dict["cuePointSubTypeEqual"] != nil {
			cuePointSubTypeEqual = dict["cuePointSubTypeEqual"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(cuePointsFreeText != nil) {
			dict["cuePointsFreeText"] = cuePointsFreeText!
		}
		if(cuePointTypeIn != nil) {
			dict["cuePointTypeIn"] = cuePointTypeIn!
		}
		if(cuePointSubTypeEqual != nil) {
			dict["cuePointSubTypeEqual"] = cuePointSubTypeEqual!
		}
		return dict
	}
}

