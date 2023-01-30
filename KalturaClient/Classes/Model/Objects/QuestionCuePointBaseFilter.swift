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
 * This class was generated using generate.php
 * against an XML schema provided by Kaltura.
 * 
 * MANUAL CHANGES TO THIS CLASS WILL BE OVERWRITTEN.
 */

open class QuestionCuePointBaseFilter: CuePointFilter {

	public class QuestionCuePointBaseFilterTokenizer: CuePointFilter.CuePointFilterTokenizer {
		
		public var questionLike: BaseTokenizedObject {
			get {
				return self.append("questionLike") 
			}
		}
		
		public var questionMultiLikeOr: BaseTokenizedObject {
			get {
				return self.append("questionMultiLikeOr") 
			}
		}
		
		public var questionMultiLikeAnd: BaseTokenizedObject {
			get {
				return self.append("questionMultiLikeAnd") 
			}
		}
	}

	public var questionLike: String? = nil
	public var questionMultiLikeOr: String? = nil
	public var questionMultiLikeAnd: String? = nil


	public func setMultiRequestToken(questionLike: String) {
		self.dict["questionLike"] = questionLike
	}
	
	public func setMultiRequestToken(questionMultiLikeOr: String) {
		self.dict["questionMultiLikeOr"] = questionMultiLikeOr
	}
	
	public func setMultiRequestToken(questionMultiLikeAnd: String) {
		self.dict["questionMultiLikeAnd"] = questionMultiLikeAnd
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["questionLike"] != nil {
			questionLike = dict["questionLike"] as? String
		}
		if dict["questionMultiLikeOr"] != nil {
			questionMultiLikeOr = dict["questionMultiLikeOr"] as? String
		}
		if dict["questionMultiLikeAnd"] != nil {
			questionMultiLikeAnd = dict["questionMultiLikeAnd"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(questionLike != nil) {
			dict["questionLike"] = questionLike!
		}
		if(questionMultiLikeOr != nil) {
			dict["questionMultiLikeOr"] = questionMultiLikeOr!
		}
		if(questionMultiLikeAnd != nil) {
			dict["questionMultiLikeAnd"] = questionMultiLikeAnd!
		}
		return dict
	}
}

