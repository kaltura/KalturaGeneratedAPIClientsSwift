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
// Copyright (C) 2006-2018  Kaltura Inc.
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

open class ResponseProfileMapping: ObjectBase {

	public class ResponseProfileMappingTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var parentProperty: BaseTokenizedObject {
			get {
				return self.append("parentProperty") 
			}
		}
		
		public var filterProperty: BaseTokenizedObject {
			get {
				return self.append("filterProperty") 
			}
		}
		
		public var allowNull: BaseTokenizedObject {
			get {
				return self.append("allowNull") 
			}
		}
	}

	public var parentProperty: String? = nil
	public var filterProperty: String? = nil
	public var allowNull: Bool? = nil


	public func setMultiRequestToken(parentProperty: String) {
		self.dict["parentProperty"] = parentProperty
	}
	
	public func setMultiRequestToken(filterProperty: String) {
		self.dict["filterProperty"] = filterProperty
	}
	
	public func setMultiRequestToken(allowNull: String) {
		self.dict["allowNull"] = allowNull
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["parentProperty"] != nil {
			parentProperty = dict["parentProperty"] as? String
		}
		if dict["filterProperty"] != nil {
			filterProperty = dict["filterProperty"] as? String
		}
		if dict["allowNull"] != nil {
			allowNull = dict["allowNull"] as? Bool
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(parentProperty != nil) {
			dict["parentProperty"] = parentProperty!
		}
		if(filterProperty != nil) {
			dict["filterProperty"] = filterProperty!
		}
		if(allowNull != nil) {
			dict["allowNull"] = allowNull!
		}
		return dict
	}
}

