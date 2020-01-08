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

open class ESearchAbstractUserItem: ESearchUserBaseItem {

	public class ESearchAbstractUserItemTokenizer: ESearchUserBaseItem.ESearchUserBaseItemTokenizer {
		
		public var searchTerm: BaseTokenizedObject {
			get {
				return self.append("searchTerm") 
			}
		}
		
		public var itemType: BaseTokenizedObject {
			get {
				return self.append("itemType") 
			}
		}
		
		public func range<T: ESearchRange.ESearchRangeTokenizer>() -> T {
			return T(self.append("range"))
		}
		
		public var addHighlight: BaseTokenizedObject {
			get {
				return self.append("addHighlight") 
			}
		}
	}

	public var searchTerm: String? = nil
	public var itemType: ESearchItemType? = nil
	public var range: ESearchRange? = nil
	public var addHighlight: Bool? = nil


	public func setMultiRequestToken(searchTerm: String) {
		self.dict["searchTerm"] = searchTerm
	}
	
	public func setMultiRequestToken(itemType: String) {
		self.dict["itemType"] = itemType
	}
	
	public func setMultiRequestToken(addHighlight: String) {
		self.dict["addHighlight"] = addHighlight
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["searchTerm"] != nil {
			searchTerm = dict["searchTerm"] as? String
		}
		if dict["itemType"] != nil {
			itemType = ESearchItemType(rawValue: (dict["itemType"] as? Int)!)
		}
		if dict["range"] != nil {
		range = try JSONParser.parse(object: dict["range"] as! [String: Any])		}
		if dict["addHighlight"] != nil {
			addHighlight = dict["addHighlight"] as? Bool
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(searchTerm != nil) {
			dict["searchTerm"] = searchTerm!
		}
		if(itemType != nil) {
			dict["itemType"] = itemType!.rawValue
		}
		if(range != nil) {
			dict["range"] = range!.toDictionary()
		}
		if(addHighlight != nil) {
			dict["addHighlight"] = addHighlight!
		}
		return dict
	}
}

