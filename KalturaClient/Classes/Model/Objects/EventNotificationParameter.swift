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

open class EventNotificationParameter: ObjectBase {

	public class EventNotificationParameterTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var key: BaseTokenizedObject {
			get {
				return self.append("key") 
			}
		}
		
		public var description: BaseTokenizedObject {
			get {
				return self.append("description") 
			}
		}
		
		public func value<T: StringValue.StringValueTokenizer>() -> T {
			return T(self.append("value"))
		}
	}

	/**  The key in the subject and body to be replaced with the dynamic value  */
	public var key: String? = nil
	public var description: String? = nil
	/**  The dynamic value to be placed in the final output  */
	public var value: StringValue? = nil


	public func setMultiRequestToken(key: String) {
		self.dict["key"] = key
	}
	
	public func setMultiRequestToken(description: String) {
		self.dict["description"] = description
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["key"] != nil {
			key = dict["key"] as? String
		}
		if dict["description"] != nil {
			description = dict["description"] as? String
		}
		if dict["value"] != nil {
		value = try JSONParser.parse(object: dict["value"] as! [String: Any])		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(key != nil) {
			dict["key"] = key!
		}
		if(description != nil) {
			dict["description"] = description!
		}
		if(value != nil) {
			dict["value"] = value!.toDictionary()
		}
		return dict
	}
}

