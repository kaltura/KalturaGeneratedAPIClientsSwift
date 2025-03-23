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

open class QuizUserEntryFilter: QuizUserEntryBaseFilter {

	public class QuizUserEntryFilterTokenizer: QuizUserEntryBaseFilter.QuizUserEntryBaseFilterTokenizer {
		
		public var extendedStatusEqual: BaseTokenizedObject {
			get {
				return self.append("extendedStatusEqual") 
			}
		}
		
		public var extendedStatusIn: BaseTokenizedObject {
			get {
				return self.append("extendedStatusIn") 
			}
		}
		
		public var extendedStatusNotIn: BaseTokenizedObject {
			get {
				return self.append("extendedStatusNotIn") 
			}
		}
	}

	public var extendedStatusEqual: UserEntryExtendedStatus? = nil
	public var extendedStatusIn: String? = nil
	public var extendedStatusNotIn: String? = nil


	public func setMultiRequestToken(extendedStatusEqual: String) {
		self.dict["extendedStatusEqual"] = extendedStatusEqual
	}
	
	public func setMultiRequestToken(extendedStatusIn: String) {
		self.dict["extendedStatusIn"] = extendedStatusIn
	}
	
	public func setMultiRequestToken(extendedStatusNotIn: String) {
		self.dict["extendedStatusNotIn"] = extendedStatusNotIn
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["extendedStatusEqual"] != nil {
			extendedStatusEqual = UserEntryExtendedStatus(rawValue: "\(dict["extendedStatusEqual"]!)")
		}
		if dict["extendedStatusIn"] != nil {
			extendedStatusIn = dict["extendedStatusIn"] as? String
		}
		if dict["extendedStatusNotIn"] != nil {
			extendedStatusNotIn = dict["extendedStatusNotIn"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(extendedStatusEqual != nil) {
			dict["extendedStatusEqual"] = extendedStatusEqual!.rawValue
		}
		if(extendedStatusIn != nil) {
			dict["extendedStatusIn"] = extendedStatusIn!
		}
		if(extendedStatusNotIn != nil) {
			dict["extendedStatusNotIn"] = extendedStatusNotIn!
		}
		return dict
	}
}

