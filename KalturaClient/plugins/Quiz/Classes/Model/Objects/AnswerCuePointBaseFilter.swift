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

open class AnswerCuePointBaseFilter: CuePointFilter {

	public class AnswerCuePointBaseFilterTokenizer: CuePointFilter.CuePointFilterTokenizer {
		
		public var parentIdEqual: BaseTokenizedObject {
			get {
				return self.append("parentIdEqual") 
			}
		}
		
		public var parentIdIn: BaseTokenizedObject {
			get {
				return self.append("parentIdIn") 
			}
		}
		
		public var quizUserEntryIdEqual: BaseTokenizedObject {
			get {
				return self.append("quizUserEntryIdEqual") 
			}
		}
		
		public var quizUserEntryIdIn: BaseTokenizedObject {
			get {
				return self.append("quizUserEntryIdIn") 
			}
		}
	}

	public var parentIdEqual: String? = nil
	public var parentIdIn: String? = nil
	public var quizUserEntryIdEqual: String? = nil
	public var quizUserEntryIdIn: String? = nil


	public func setMultiRequestToken(parentIdEqual: String) {
		self.dict["parentIdEqual"] = parentIdEqual
	}
	
	public func setMultiRequestToken(parentIdIn: String) {
		self.dict["parentIdIn"] = parentIdIn
	}
	
	public func setMultiRequestToken(quizUserEntryIdEqual: String) {
		self.dict["quizUserEntryIdEqual"] = quizUserEntryIdEqual
	}
	
	public func setMultiRequestToken(quizUserEntryIdIn: String) {
		self.dict["quizUserEntryIdIn"] = quizUserEntryIdIn
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["parentIdEqual"] != nil {
			parentIdEqual = dict["parentIdEqual"] as? String
		}
		if dict["parentIdIn"] != nil {
			parentIdIn = dict["parentIdIn"] as? String
		}
		if dict["quizUserEntryIdEqual"] != nil {
			quizUserEntryIdEqual = dict["quizUserEntryIdEqual"] as? String
		}
		if dict["quizUserEntryIdIn"] != nil {
			quizUserEntryIdIn = dict["quizUserEntryIdIn"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(parentIdEqual != nil) {
			dict["parentIdEqual"] = parentIdEqual!
		}
		if(parentIdIn != nil) {
			dict["parentIdIn"] = parentIdIn!
		}
		if(quizUserEntryIdEqual != nil) {
			dict["quizUserEntryIdEqual"] = quizUserEntryIdEqual!
		}
		if(quizUserEntryIdIn != nil) {
			dict["quizUserEntryIdIn"] = quizUserEntryIdIn!
		}
		return dict
	}
}

