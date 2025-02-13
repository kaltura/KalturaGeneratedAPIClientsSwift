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
 * This class was generated using exec.php
 * against an XML schema provided by Kaltura.
 * 
 * MANUAL CHANGES TO THIS CLASS WILL BE OVERWRITTEN.
 */

open class ESearchItemDataResult: ObjectBase {

	public class ESearchItemDataResultTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var totalCount: BaseTokenizedObject {
			get {
				return self.append("totalCount") 
			}
		}
		
		public var items: ArrayTokenizedObject<ESearchItemData.ESearchItemDataTokenizer> {
			get {
				return ArrayTokenizedObject<ESearchItemData.ESearchItemDataTokenizer>(self.append("items"))
			} 
		}
		
		public var itemsType: BaseTokenizedObject {
			get {
				return self.append("itemsType") 
			}
		}
	}

	public var totalCount: Int? = nil
	public var items: Array<ESearchItemData>? = nil
	public var itemsType: String? = nil


	public func setMultiRequestToken(totalCount: String) {
		self.dict["totalCount"] = totalCount
	}
	
	public func setMultiRequestToken(itemsType: String) {
		self.dict["itemsType"] = itemsType
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["totalCount"] != nil {
			totalCount = dict["totalCount"] as? Int
		}
		if dict["items"] != nil {
			items = try JSONParser.parse(array: dict["items"] as! [Any])
		}
		if dict["itemsType"] != nil {
			itemsType = dict["itemsType"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(totalCount != nil) {
			dict["totalCount"] = totalCount!
		}
		if(items != nil) {
			dict["items"] = items!.map { value in value.toDictionary() }
		}
		if(itemsType != nil) {
			dict["itemsType"] = itemsType!
		}
		return dict
	}
}

