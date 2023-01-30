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

open class CategoryUserAdvancedFilter: SearchItem {

	public class CategoryUserAdvancedFilterTokenizer: SearchItem.SearchItemTokenizer {
		
		public var memberIdEq: BaseTokenizedObject {
			get {
				return self.append("memberIdEq") 
			}
		}
		
		public var memberIdIn: BaseTokenizedObject {
			get {
				return self.append("memberIdIn") 
			}
		}
		
		public var memberPermissionsMatchOr: BaseTokenizedObject {
			get {
				return self.append("memberPermissionsMatchOr") 
			}
		}
		
		public var memberPermissionsMatchAnd: BaseTokenizedObject {
			get {
				return self.append("memberPermissionsMatchAnd") 
			}
		}
	}

	public var memberIdEq: String? = nil
	public var memberIdIn: String? = nil
	public var memberPermissionsMatchOr: String? = nil
	public var memberPermissionsMatchAnd: String? = nil


	public func setMultiRequestToken(memberIdEq: String) {
		self.dict["memberIdEq"] = memberIdEq
	}
	
	public func setMultiRequestToken(memberIdIn: String) {
		self.dict["memberIdIn"] = memberIdIn
	}
	
	public func setMultiRequestToken(memberPermissionsMatchOr: String) {
		self.dict["memberPermissionsMatchOr"] = memberPermissionsMatchOr
	}
	
	public func setMultiRequestToken(memberPermissionsMatchAnd: String) {
		self.dict["memberPermissionsMatchAnd"] = memberPermissionsMatchAnd
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["memberIdEq"] != nil {
			memberIdEq = dict["memberIdEq"] as? String
		}
		if dict["memberIdIn"] != nil {
			memberIdIn = dict["memberIdIn"] as? String
		}
		if dict["memberPermissionsMatchOr"] != nil {
			memberPermissionsMatchOr = dict["memberPermissionsMatchOr"] as? String
		}
		if dict["memberPermissionsMatchAnd"] != nil {
			memberPermissionsMatchAnd = dict["memberPermissionsMatchAnd"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(memberIdEq != nil) {
			dict["memberIdEq"] = memberIdEq!
		}
		if(memberIdIn != nil) {
			dict["memberIdIn"] = memberIdIn!
		}
		if(memberPermissionsMatchOr != nil) {
			dict["memberPermissionsMatchOr"] = memberPermissionsMatchOr!
		}
		if(memberPermissionsMatchAnd != nil) {
			dict["memberPermissionsMatchAnd"] = memberPermissionsMatchAnd!
		}
		return dict
	}
}

