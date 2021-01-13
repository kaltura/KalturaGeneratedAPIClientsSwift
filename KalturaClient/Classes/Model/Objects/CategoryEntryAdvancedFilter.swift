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

open class CategoryEntryAdvancedFilter: SearchItem {

	public class CategoryEntryAdvancedFilterTokenizer: SearchItem.SearchItemTokenizer {
		
		public var categoriesMatchOr: BaseTokenizedObject {
			get {
				return self.append("categoriesMatchOr") 
			}
		}
		
		public var categoryEntryStatusIn: BaseTokenizedObject {
			get {
				return self.append("categoryEntryStatusIn") 
			}
		}
		
		public var orderBy: BaseTokenizedObject {
			get {
				return self.append("orderBy") 
			}
		}
		
		public var categoryIdEqual: BaseTokenizedObject {
			get {
				return self.append("categoryIdEqual") 
			}
		}
	}

	public var categoriesMatchOr: String? = nil
	public var categoryEntryStatusIn: String? = nil
	public var orderBy: CategoryEntryAdvancedOrderBy? = nil
	public var categoryIdEqual: Int? = nil


	public func setMultiRequestToken(categoriesMatchOr: String) {
		self.dict["categoriesMatchOr"] = categoriesMatchOr
	}
	
	public func setMultiRequestToken(categoryEntryStatusIn: String) {
		self.dict["categoryEntryStatusIn"] = categoryEntryStatusIn
	}
	
	public func setMultiRequestToken(orderBy: String) {
		self.dict["orderBy"] = orderBy
	}
	
	public func setMultiRequestToken(categoryIdEqual: String) {
		self.dict["categoryIdEqual"] = categoryIdEqual
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["categoriesMatchOr"] != nil {
			categoriesMatchOr = dict["categoriesMatchOr"] as? String
		}
		if dict["categoryEntryStatusIn"] != nil {
			categoryEntryStatusIn = dict["categoryEntryStatusIn"] as? String
		}
		if dict["orderBy"] != nil {
			orderBy = CategoryEntryAdvancedOrderBy(rawValue: "\(dict["orderBy"]!)")
		}
		if dict["categoryIdEqual"] != nil {
			categoryIdEqual = dict["categoryIdEqual"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(categoriesMatchOr != nil) {
			dict["categoriesMatchOr"] = categoriesMatchOr!
		}
		if(categoryEntryStatusIn != nil) {
			dict["categoryEntryStatusIn"] = categoryEntryStatusIn!
		}
		if(orderBy != nil) {
			dict["orderBy"] = orderBy!.rawValue
		}
		if(categoryIdEqual != nil) {
			dict["categoryIdEqual"] = categoryIdEqual!
		}
		return dict
	}
}

