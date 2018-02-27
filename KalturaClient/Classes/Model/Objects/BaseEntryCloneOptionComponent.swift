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

open class BaseEntryCloneOptionComponent: BaseEntryCloneOptionItem {

	public class BaseEntryCloneOptionComponentTokenizer: BaseEntryCloneOptionItem.BaseEntryCloneOptionItemTokenizer {
		
		public var itemType: BaseTokenizedObject {
			get {
				return self.append("itemType") 
			}
		}
		
		public var rule: BaseTokenizedObject {
			get {
				return self.append("rule") 
			}
		}
	}

	public var itemType: BaseEntryCloneOptions? = nil
	/**  condition rule (include/exclude)  */
	public var rule: CloneComponentSelectorType? = nil


	public func setMultiRequestToken(itemType: String) {
		self.dict["itemType"] = itemType
	}
	
	public func setMultiRequestToken(rule: String) {
		self.dict["rule"] = rule
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["itemType"] != nil {
			itemType = BaseEntryCloneOptions(rawValue: "\(dict["itemType"]!)")
		}
		if dict["rule"] != nil {
			rule = CloneComponentSelectorType(rawValue: "\(dict["rule"]!)")
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(itemType != nil) {
			dict["itemType"] = itemType!.rawValue
		}
		if(rule != nil) {
			dict["rule"] = rule!.rawValue
		}
		return dict
	}
}

