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

open class QuestionCuePoint: CuePoint {

	/**  Array of key value answerKey-&gt;optionAnswer objects  */
	public var optionalAnswers: Dictionary<String, OptionalAnswer>? = nil
	public var hint: String? = nil
	public var question: String? = nil
	public var explanation: String? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["optionalAnswers"] != nil {
			optionalAnswers = try JSONParser.parse(map: dict["optionalAnswers"] as! [String: Any])
		}
		if dict["hint"] != nil {
			hint = dict["hint"] as? String
		}
		if dict["question"] != nil {
			question = dict["question"] as? String
		}
		if dict["explanation"] != nil {
			explanation = dict["explanation"] as? String
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(optionalAnswers != nil) {
			dict["optionalAnswers"] = optionalAnswers!.map { key, value in (key, value.toDictionary()) }
		}
		if(hint != nil) {
			dict["hint"] = hint!
		}
		if(question != nil) {
			dict["question"] = question!
		}
		if(explanation != nil) {
			dict["explanation"] = explanation!
		}
		return dict
	}
}

