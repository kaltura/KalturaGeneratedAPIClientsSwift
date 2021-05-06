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

open class ModifyCategoriesObjectTask: ObjectTask {

	public class ModifyCategoriesObjectTaskTokenizer: ObjectTask.ObjectTaskTokenizer {
		
		public var addRemoveType: BaseTokenizedObject {
			get {
				return self.append("addRemoveType") 
			}
		}
		
		public var categoryIds: ArrayTokenizedObject<IntegerValue.IntegerValueTokenizer> {
			get {
				return ArrayTokenizedObject<IntegerValue.IntegerValueTokenizer>(self.append("categoryIds"))
			} 
		}
	}

	/**  Should the object task add or remove categories?  */
	public var addRemoveType: ScheduledTaskAddOrRemoveType? = nil
	/**  The list of category ids to add or remove  */
	public var categoryIds: Array<IntegerValue>? = nil


	public func setMultiRequestToken(addRemoveType: String) {
		self.dict["addRemoveType"] = addRemoveType
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["addRemoveType"] != nil {
			addRemoveType = ScheduledTaskAddOrRemoveType(rawValue: (dict["addRemoveType"] as? Int)!)
		}
		if dict["categoryIds"] != nil {
			categoryIds = try JSONParser.parse(array: dict["categoryIds"] as! [Any])
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(addRemoveType != nil) {
			dict["addRemoveType"] = addRemoveType!.rawValue
		}
		if(categoryIds != nil) {
			dict["categoryIds"] = categoryIds!.map { value in value.toDictionary() }
		}
		return dict
	}
}

