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

open class EventNotificationArrayParameter: EventNotificationParameter {

	public class EventNotificationArrayParameterTokenizer: EventNotificationParameter.EventNotificationParameterTokenizer {
		
		public var values: ArrayTokenizedObject<StringHolder.StringHolderTokenizer> {
			get {
				return ArrayTokenizedObject<StringHolder.StringHolderTokenizer>(self.append("values"))
			} 
		}
		
		public var allowedValues: ArrayTokenizedObject<StringValue.StringValueTokenizer> {
			get {
				return ArrayTokenizedObject<StringValue.StringValueTokenizer>(self.append("allowedValues"))
			} 
		}
	}

	public var values: Array<StringHolder>? = nil
	/**  Used to restrict the values to close list  */
	public var allowedValues: Array<StringValue>? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["values"] != nil {
			values = try JSONParser.parse(array: dict["values"] as! [Any])
		}
		if dict["allowedValues"] != nil {
			allowedValues = try JSONParser.parse(array: dict["allowedValues"] as! [Any])
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(values != nil) {
			dict["values"] = values!.map { value in value.toDictionary() }
		}
		if(allowedValues != nil) {
			dict["allowedValues"] = allowedValues!.map { value in value.toDictionary() }
		}
		return dict
	}
}

