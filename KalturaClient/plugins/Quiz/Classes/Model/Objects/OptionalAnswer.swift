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

/**  A representation of an optional answer for question cue point  */
open class OptionalAnswer: ObjectBase {

	public class OptionalAnswerTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var key: BaseTokenizedObject {
			get {
				return self.append("key") 
			}
		}
		
		public var text: BaseTokenizedObject {
			get {
				return self.append("text") 
			}
		}
		
		public var weight: BaseTokenizedObject {
			get {
				return self.append("weight") 
			}
		}
		
		public var isCorrect: BaseTokenizedObject {
			get {
				return self.append("isCorrect") 
			}
		}
	}

	public var key: String? = nil
	public var text: String? = nil
	public var weight: Double? = nil
	public var isCorrect: Bool? = nil


	public func setMultiRequestToken(key: String) {
		self.dict["key"] = key
	}
	
	public func setMultiRequestToken(text: String) {
		self.dict["text"] = text
	}
	
	public func setMultiRequestToken(weight: String) {
		self.dict["weight"] = weight
	}
	
	public func setMultiRequestToken(isCorrect: String) {
		self.dict["isCorrect"] = isCorrect
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["key"] != nil {
			key = dict["key"] as? String
		}
		if dict["text"] != nil {
			text = dict["text"] as? String
		}
		if dict["weight"] != nil {
			weight = dict["weight"] as? Double
		}
		if dict["isCorrect"] != nil {
			isCorrect = dict["isCorrect"] as? Bool
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(key != nil) {
			dict["key"] = key!
		}
		if(text != nil) {
			dict["text"] = text!
		}
		if(weight != nil) {
			dict["weight"] = weight!
		}
		if(isCorrect != nil) {
			dict["isCorrect"] = isCorrect!
		}
		return dict
	}
}

