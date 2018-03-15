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

open class QuestionCuePoint: CuePoint {

	public class QuestionCuePointTokenizer: CuePoint.CuePointTokenizer {
		
		public var optionalAnswers: ArrayTokenizedObject<OptionalAnswer.OptionalAnswerTokenizer> {
			get {
				return ArrayTokenizedObject<OptionalAnswer.OptionalAnswerTokenizer>(self.append("optionalAnswers"))
			} 
		}
		
		public var hint: BaseTokenizedObject {
			get {
				return self.append("hint") 
			}
		}
		
		public var question: BaseTokenizedObject {
			get {
				return self.append("question") 
			}
		}
		
		public var explanation: BaseTokenizedObject {
			get {
				return self.append("explanation") 
			}
		}
		
		public var questionType: BaseTokenizedObject {
			get {
				return self.append("questionType") 
			}
		}
		
		public var presentationOrder: BaseTokenizedObject {
			get {
				return self.append("presentationOrder") 
			}
		}
		
		public var excludeFromScore: BaseTokenizedObject {
			get {
				return self.append("excludeFromScore") 
			}
		}
	}

	/**  Array of key value answerKey-&gt;optionAnswer objects  */
	public var optionalAnswers: Array<OptionalAnswer>? = nil
	public var hint: String? = nil
	public var question: String? = nil
	public var explanation: String? = nil
	public var questionType: QuestionType? = nil
	public var presentationOrder: Int? = nil
	public var excludeFromScore: Bool? = nil


	public func setMultiRequestToken(hint: String) {
		self.dict["hint"] = hint
	}
	
	public func setMultiRequestToken(question: String) {
		self.dict["question"] = question
	}
	
	public func setMultiRequestToken(explanation: String) {
		self.dict["explanation"] = explanation
	}
	
	public func setMultiRequestToken(questionType: String) {
		self.dict["questionType"] = questionType
	}
	
	public func setMultiRequestToken(presentationOrder: String) {
		self.dict["presentationOrder"] = presentationOrder
	}
	
	public func setMultiRequestToken(excludeFromScore: String) {
		self.dict["excludeFromScore"] = excludeFromScore
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["optionalAnswers"] != nil {
			optionalAnswers = try JSONParser.parse(array: dict["optionalAnswers"] as! [Any])
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
		if dict["questionType"] != nil {
			questionType = QuestionType(rawValue: (dict["questionType"] as? Int)!)
		}
		if dict["presentationOrder"] != nil {
			presentationOrder = dict["presentationOrder"] as? Int
		}
		if dict["excludeFromScore"] != nil {
			excludeFromScore = dict["excludeFromScore"] as? Bool
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(optionalAnswers != nil) {
			dict["optionalAnswers"] = optionalAnswers!.map { value in value.toDictionary() }
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
		if(questionType != nil) {
			dict["questionType"] = questionType!.rawValue
		}
		if(presentationOrder != nil) {
			dict["presentationOrder"] = presentationOrder!
		}
		if(excludeFromScore != nil) {
			dict["excludeFromScore"] = excludeFromScore!
		}
		return dict
	}
}

