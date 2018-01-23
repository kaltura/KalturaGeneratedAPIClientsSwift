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
// Copyright (C) 2006-2017  Kaltura Inc.
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

open class ESearchCategoryOperator: ESearchCategoryBaseItem {

	public class ESearchCategoryOperatorTokenizer: ESearchCategoryBaseItem.ESearchCategoryBaseItemTokenizer {
		
		public var operator: BaseTokenizedObject {
			get {
				return self.append("operator") 
			}
		}
		
		public var searchItems: ArrayTokenizedObject<ESearchCategoryBaseItem.ESearchCategoryBaseItemTokenizer> {
			get {
				return ArrayTokenizedObject<ESearchCategoryBaseItem.ESearchCategoryBaseItemTokenizer>(self.append("searchItems"))
			} 
		}
	}

	public var operator: ESearchOperatorType? = nil
	public var searchItems: Array<ESearchCategoryBaseItem>? = nil


	public func setMultiRequestToken(operator: String) {
		self.dict["operator"] = operator
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["operator"] != nil {
			operator = ESearchOperatorType(rawValue: (dict["operator"] as? Int)!)
		}
		if dict["searchItems"] != nil {
			searchItems = try JSONParser.parse(array: dict["searchItems"] as! [Any])
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(operator != nil) {
			dict["operator"] = operator!.rawValue
		}
		if(searchItems != nil) {
			dict["searchItems"] = searchItems!.map { value in value.toDictionary() }
		}
		return dict
	}
}

