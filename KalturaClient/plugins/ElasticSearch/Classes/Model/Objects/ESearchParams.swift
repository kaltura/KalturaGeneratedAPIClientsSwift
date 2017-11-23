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

open class ESearchParams: ObjectBase {

	public class ESearchParamsTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public func searchOperator<T: ESearchOperator.ESearchOperatorTokenizer>() -> T {
			return T(self.append("searchOperator"))
		}
		
		public var objectStatuses: BaseTokenizedObject {
			get {
				return self.append("objectStatuses") 
			}
		}
		
		public var objectId: BaseTokenizedObject {
			get {
				return self.append("objectId") 
			}
		}
		
		public func orderBy<T: ESearchOrderBy.ESearchOrderByTokenizer>() -> T {
			return T(self.append("orderBy"))
		}
		
		public var useHighlight: BaseTokenizedObject {
			get {
				return self.append("useHighlight") 
			}
		}
	}

	public var searchOperator: ESearchOperator? = nil
	public var objectStatuses: String? = nil
	public var objectId: String? = nil
	public var orderBy: ESearchOrderBy? = nil
	public var useHighlight: Bool? = nil


	public func setMultiRequestToken(objectStatuses: String) {
		self.dict["objectStatuses"] = objectStatuses
	}
	
	public func setMultiRequestToken(objectId: String) {
		self.dict["objectId"] = objectId
	}
	
	public func setMultiRequestToken(useHighlight: String) {
		self.dict["useHighlight"] = useHighlight
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["searchOperator"] != nil {
		searchOperator = try JSONParser.parse(object: dict["searchOperator"] as! [String: Any])		}
		if dict["objectStatuses"] != nil {
			objectStatuses = dict["objectStatuses"] as? String
		}
		if dict["objectId"] != nil {
			objectId = dict["objectId"] as? String
		}
		if dict["orderBy"] != nil {
		orderBy = try JSONParser.parse(object: dict["orderBy"] as! [String: Any])		}
		if dict["useHighlight"] != nil {
			useHighlight = dict["useHighlight"] as? Bool
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(searchOperator != nil) {
			dict["searchOperator"] = searchOperator!.toDictionary()
		}
		if(objectStatuses != nil) {
			dict["objectStatuses"] = objectStatuses!
		}
		if(objectId != nil) {
			dict["objectId"] = objectId!
		}
		if(orderBy != nil) {
			dict["orderBy"] = orderBy!.toDictionary()
		}
		if(useHighlight != nil) {
			dict["useHighlight"] = useHighlight!
		}
		return dict
	}
}

