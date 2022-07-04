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
// Copyright (C) 2006-2022  Kaltura Inc.
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

open class QuizUserEntry: UserEntry {

	public class QuizUserEntryTokenizer: UserEntry.UserEntryTokenizer {
		
		public var score: BaseTokenizedObject {
			get {
				return self.append("score") 
			}
		}
		
		public var calculatedScore: BaseTokenizedObject {
			get {
				return self.append("calculatedScore") 
			}
		}
		
		public var feedback: BaseTokenizedObject {
			get {
				return self.append("feedback") 
			}
		}
		
		public var version: BaseTokenizedObject {
			get {
				return self.append("version") 
			}
		}
	}

	public var score: Double? = nil
	public var calculatedScore: Double? = nil
	public var feedback: String? = nil
	public var version: Int? = nil


	public func setMultiRequestToken(score: String) {
		self.dict["score"] = score
	}
	
	public func setMultiRequestToken(calculatedScore: String) {
		self.dict["calculatedScore"] = calculatedScore
	}
	
	public func setMultiRequestToken(feedback: String) {
		self.dict["feedback"] = feedback
	}
	
	public func setMultiRequestToken(version: String) {
		self.dict["version"] = version
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["score"] != nil {
			score = dict["score"] as? Double
		}
		if dict["calculatedScore"] != nil {
			calculatedScore = dict["calculatedScore"] as? Double
		}
		if dict["feedback"] != nil {
			feedback = dict["feedback"] as? String
		}
		if dict["version"] != nil {
			version = dict["version"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(feedback != nil) {
			dict["feedback"] = feedback!
		}
		return dict
	}
}

