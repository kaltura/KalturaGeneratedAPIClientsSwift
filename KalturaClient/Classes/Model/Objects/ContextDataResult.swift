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

open class ContextDataResult: ObjectBase {

	public class ContextDataResultTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var messages: ArrayTokenizedObject<StringHolder.StringHolderTokenizer> {
			get {
				return ArrayTokenizedObject<StringHolder.StringHolderTokenizer>(self.append("messages"))
			} 
		}
		
		public var actions: ArrayTokenizedObject<RuleAction.RuleActionTokenizer> {
			get {
				return ArrayTokenizedObject<RuleAction.RuleActionTokenizer>(self.append("actions"))
			} 
		}
	}

	/**  Array of messages as received from the rules that invalidated  */
	public var messages: Array<StringHolder>? = nil
	/**  Array of actions as received from the rules that invalidated  */
	public var actions: Array<RuleAction>? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["messages"] != nil {
			messages = try JSONParser.parse(array: dict["messages"] as! [Any])
		}
		if dict["actions"] != nil {
			actions = try JSONParser.parse(array: dict["actions"] as! [Any])
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(messages != nil) {
			dict["messages"] = messages!.map { value in value.toDictionary() }
		}
		if(actions != nil) {
			dict["actions"] = actions!.map { value in value.toDictionary() }
		}
		return dict
	}
}

