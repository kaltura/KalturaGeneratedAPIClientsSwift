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

/**  Evaluates PHP statement, depends on the execution context  */
open class HttpNotificationObjectData: HttpNotificationData {

	public class HttpNotificationObjectDataTokenizer: HttpNotificationData.HttpNotificationDataTokenizer {
		
		public var apiObjectType: BaseTokenizedObject {
			get {
				return self.append("apiObjectType") 
			}
		}
		
		public var format: BaseTokenizedObject {
			get {
				return self.append("format") 
			}
		}
		
		public var ignoreNull: BaseTokenizedObject {
			get {
				return self.append("ignoreNull") 
			}
		}
		
		public var code: BaseTokenizedObject {
			get {
				return self.append("code") 
			}
		}
		
		public var dataStringReplacements: ArrayTokenizedObject<KeyValue.KeyValueTokenizer> {
			get {
				return ArrayTokenizedObject<KeyValue.KeyValueTokenizer>(self.append("dataStringReplacements"))
			} 
		}
	}

	/**  Kaltura API object type  */
	public var apiObjectType: String? = nil
	/**  Data format  */
	public var format: ResponseType? = nil
	/**  Ignore null attributes during serialization  */
	public var ignoreNull: Bool? = nil
	/**  PHP code  */
	public var code: String? = nil
	/**  An array of pattern-replacement pairs used for data string regex replacements  */
	public var dataStringReplacements: Array<KeyValue>? = nil


	public func setMultiRequestToken(apiObjectType: String) {
		self.dict["apiObjectType"] = apiObjectType
	}
	
	public func setMultiRequestToken(format: String) {
		self.dict["format"] = format
	}
	
	public func setMultiRequestToken(ignoreNull: String) {
		self.dict["ignoreNull"] = ignoreNull
	}
	
	public func setMultiRequestToken(code: String) {
		self.dict["code"] = code
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["apiObjectType"] != nil {
			apiObjectType = dict["apiObjectType"] as? String
		}
		if dict["format"] != nil {
			format = ResponseType(rawValue: (dict["format"] as? Int)!)
		}
		if dict["ignoreNull"] != nil {
			ignoreNull = dict["ignoreNull"] as? Bool
		}
		if dict["code"] != nil {
			code = dict["code"] as? String
		}
		if dict["dataStringReplacements"] != nil {
			dataStringReplacements = try JSONParser.parse(array: dict["dataStringReplacements"] as! [Any])
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(apiObjectType != nil) {
			dict["apiObjectType"] = apiObjectType!
		}
		if(format != nil) {
			dict["format"] = format!.rawValue
		}
		if(ignoreNull != nil) {
			dict["ignoreNull"] = ignoreNull!
		}
		if(code != nil) {
			dict["code"] = code!
		}
		if(dataStringReplacements != nil) {
			dict["dataStringReplacements"] = dataStringReplacements!.map { value in value.toDictionary() }
		}
		return dict
	}
}

