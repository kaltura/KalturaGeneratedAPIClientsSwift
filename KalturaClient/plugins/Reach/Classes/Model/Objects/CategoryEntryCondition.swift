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

open class CategoryEntryCondition: Condition {

	public class CategoryEntryConditionTokenizer: Condition.ConditionTokenizer {
		
		public var categoryId: BaseTokenizedObject {
			get {
				return self.append("categoryId") 
			}
		}
		
		public var categoryIds: BaseTokenizedObject {
			get {
				return self.append("categoryIds") 
			}
		}
		
		public var categoryUserPermission: BaseTokenizedObject {
			get {
				return self.append("categoryUserPermission") 
			}
		}
		
		public var comparison: BaseTokenizedObject {
			get {
				return self.append("comparison") 
			}
		}
	}

	/**  Category id to check condition for  */
	public var categoryId: Int? = nil
	/**  Category id's to check condition for  */
	public var categoryIds: String? = nil
	/**  Minimum category user level permission to validate  */
	public var categoryUserPermission: CategoryUserPermissionLevel? = nil
	/**  Comparing operator  */
	public var comparison: SearchConditionComparison? = nil


	public func setMultiRequestToken(categoryId: String) {
		self.dict["categoryId"] = categoryId
	}
	
	public func setMultiRequestToken(categoryIds: String) {
		self.dict["categoryIds"] = categoryIds
	}
	
	public func setMultiRequestToken(categoryUserPermission: String) {
		self.dict["categoryUserPermission"] = categoryUserPermission
	}
	
	public func setMultiRequestToken(comparison: String) {
		self.dict["comparison"] = comparison
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["categoryId"] != nil {
			categoryId = dict["categoryId"] as? Int
		}
		if dict["categoryIds"] != nil {
			categoryIds = dict["categoryIds"] as? String
		}
		if dict["categoryUserPermission"] != nil {
			categoryUserPermission = CategoryUserPermissionLevel(rawValue: (dict["categoryUserPermission"] as? Int)!)
		}
		if dict["comparison"] != nil {
			comparison = SearchConditionComparison(rawValue: "\(dict["comparison"]!)")
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(categoryId != nil) {
			dict["categoryId"] = categoryId!
		}
		if(categoryIds != nil) {
			dict["categoryIds"] = categoryIds!
		}
		if(categoryUserPermission != nil) {
			dict["categoryUserPermission"] = categoryUserPermission!.rawValue
		}
		if(comparison != nil) {
			dict["comparison"] = comparison!.rawValue
		}
		return dict
	}
}

