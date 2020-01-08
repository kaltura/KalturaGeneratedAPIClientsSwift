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

open class ConversionAttribute: ObjectBase {

	public class ConversionAttributeTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var flavorParamsId: BaseTokenizedObject {
			get {
				return self.append("flavorParamsId") 
			}
		}
		
		public var name: BaseTokenizedObject {
			get {
				return self.append("name") 
			}
		}
		
		public var value: BaseTokenizedObject {
			get {
				return self.append("value") 
			}
		}
	}

	/**  The id of the flavor params, set to null for source flavor  */
	public var flavorParamsId: Int? = nil
	/**  Attribute name  */
	public var name: String? = nil
	/**  Attribute value  */
	public var value: String? = nil


	public func setMultiRequestToken(flavorParamsId: String) {
		self.dict["flavorParamsId"] = flavorParamsId
	}
	
	public func setMultiRequestToken(name: String) {
		self.dict["name"] = name
	}
	
	public func setMultiRequestToken(value: String) {
		self.dict["value"] = value
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["flavorParamsId"] != nil {
			flavorParamsId = dict["flavorParamsId"] as? Int
		}
		if dict["name"] != nil {
			name = dict["name"] as? String
		}
		if dict["value"] != nil {
			value = dict["value"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(flavorParamsId != nil) {
			dict["flavorParamsId"] = flavorParamsId!
		}
		if(name != nil) {
			dict["name"] = name!
		}
		if(value != nil) {
			dict["value"] = value!
		}
		return dict
	}
}

