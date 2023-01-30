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

open class ESearchEntryOperator: ESearchEntryBaseItem {

	public class ESearchEntryOperatorTokenizer: ESearchEntryBaseItem.ESearchEntryBaseItemTokenizer {
		
		public var operator_: BaseTokenizedObject {
			get {
				return self.append("operator_") 
			}
		}
		
		public var searchItems: ArrayTokenizedObject<ESearchEntryBaseItem.ESearchEntryBaseItemTokenizer> {
			get {
				return ArrayTokenizedObject<ESearchEntryBaseItem.ESearchEntryBaseItemTokenizer>(self.append("searchItems"))
			} 
		}
	}

	public var operator_: ESearchOperatorType? = nil
	public var searchItems: Array<ESearchEntryBaseItem>? = nil


	public func setMultiRequestToken(operator_: String) {
		self.dict["operator"] = operator_
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["operator"] != nil {
			operator_ = ESearchOperatorType(rawValue: (dict["operator"] as? Int)!)
		}
		if dict["searchItems"] != nil {
			searchItems = try JSONParser.parse(array: dict["searchItems"] as! [Any])
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(operator_ != nil) {
			dict["operator"] = operator_!.rawValue
		}
		if(searchItems != nil) {
			dict["searchItems"] = searchItems!.map { value in value.toDictionary() }
		}
		return dict
	}
}

