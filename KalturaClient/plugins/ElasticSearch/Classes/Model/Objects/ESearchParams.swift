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

open class ESearchParams: ObjectBase {

	public class ESearchParamsTokenizer: ObjectBase.ObjectBaseTokenizer {
		
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
	}

	public var objectStatuses: String? = nil
	public var objectId: String? = nil
	public var orderBy: ESearchOrderBy? = nil


	public func setMultiRequestToken(objectStatuses: String) {
		self.dict["objectStatuses"] = objectStatuses
	}
	
	public func setMultiRequestToken(objectId: String) {
		self.dict["objectId"] = objectId
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["objectStatuses"] != nil {
			objectStatuses = dict["objectStatuses"] as? String
		}
		if dict["objectId"] != nil {
			objectId = dict["objectId"] as? String
		}
		if dict["orderBy"] != nil {
		orderBy = try JSONParser.parse(object: dict["orderBy"] as! [String: Any])		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(objectStatuses != nil) {
			dict["objectStatuses"] = objectStatuses!
		}
		if(objectId != nil) {
			dict["objectId"] = objectId!
		}
		if(orderBy != nil) {
			dict["orderBy"] = orderBy!.toDictionary()
		}
		return dict
	}
}

