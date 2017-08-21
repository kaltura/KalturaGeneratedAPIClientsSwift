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

open class Rule: ObjectBase {

	/**  Short Rule Description  */
	public var description: String? = nil
	/**  Rule Custom Data to allow saving rule specific information  */
	public var ruleData: String? = nil
	/**  Message to be thrown to the player in case the rule is fulfilled  */
	public var message: String? = nil
	/**  Code to be thrown to the player in case the rule is fulfilled  */
	public var code: String? = nil
	/**  Actions to be performed by the player in case the rule is fulfilled  */
	public var actions: Array<RuleAction>? = nil
	/**  Conditions to validate the rule  */
	public var conditions: Array<Condition>? = nil
	/**  Indicates what contexts should be tested by this rule  */
	public var contexts: Array<ContextTypeHolder>? = nil
	/**  Indicates that this rule is enough and no need to continue checking the rest of
	  the rules  */
	public var stopProcessing: Bool? = nil
	/**  Indicates if we should force ks validation for admin ks users as well  */
	public var forceAdminValidation: Bool? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["description"] != nil {
			description = dict["description"] as? String
		}
		if dict["ruleData"] != nil {
			ruleData = dict["ruleData"] as? String
		}
		if dict["message"] != nil {
			message = dict["message"] as? String
		}
		if dict["code"] != nil {
			code = dict["code"] as? String
		}
		if dict["actions"] != nil {
			actions = try JSONParser.parse(array: dict["actions"] as! [Any])
		}
		if dict["conditions"] != nil {
			conditions = try JSONParser.parse(array: dict["conditions"] as! [Any])
		}
		if dict["contexts"] != nil {
			contexts = try JSONParser.parse(array: dict["contexts"] as! [Any])
		}
		if dict["stopProcessing"] != nil {
			stopProcessing = dict["stopProcessing"] as? Bool
		}
		if dict["forceAdminValidation"] != nil {
			forceAdminValidation = dict["forceAdminValidation"] as? Bool
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(description != nil) {
			dict["description"] = description!
		}
		if(ruleData != nil) {
			dict["ruleData"] = ruleData!
		}
		if(message != nil) {
			dict["message"] = message!
		}
		if(code != nil) {
			dict["code"] = code!
		}
		if(actions != nil) {
			dict["actions"] = actions!.map { value in value.toDictionary() }
		}
		if(conditions != nil) {
			dict["conditions"] = conditions!.map { value in value.toDictionary() }
		}
		if(contexts != nil) {
			dict["contexts"] = contexts!.map { value in value.toDictionary() }
		}
		if(stopProcessing != nil) {
			dict["stopProcessing"] = stopProcessing!
		}
		if(forceAdminValidation != nil) {
			dict["forceAdminValidation"] = forceAdminValidation!
		}
		return dict
	}
}

