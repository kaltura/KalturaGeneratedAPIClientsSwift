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

open class ReportFilter: ObjectBase {

	public class ReportFilterTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var dimension: BaseTokenizedObject {
			get {
				return self.append("dimension") 
			}
		}
		
		public var values: BaseTokenizedObject {
			get {
				return self.append("values") 
			}
		}
	}

	/**  The dimension whose values should be filtered  */
	public var dimension: String? = nil
	/**  The (comma separated) values to include in the filter  */
	public var values: String? = nil


	public func setMultiRequestToken(dimension: String) {
		self.dict["dimension"] = dimension
	}
	
	public func setMultiRequestToken(values: String) {
		self.dict["values"] = values
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["dimension"] != nil {
			dimension = dict["dimension"] as? String
		}
		if dict["values"] != nil {
			values = dict["values"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(dimension != nil) {
			dict["dimension"] = dimension!
		}
		if(values != nil) {
			dict["values"] = values!
		}
		return dict
	}
}

