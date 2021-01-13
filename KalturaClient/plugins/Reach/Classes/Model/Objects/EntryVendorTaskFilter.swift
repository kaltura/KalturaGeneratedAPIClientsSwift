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

open class EntryVendorTaskFilter: EntryVendorTaskBaseFilter {

	public class EntryVendorTaskFilterTokenizer: EntryVendorTaskBaseFilter.EntryVendorTaskBaseFilterTokenizer {
		
		public var freeText: BaseTokenizedObject {
			get {
				return self.append("freeText") 
			}
		}
		
		public var expectedFinishTimeGreaterThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("expectedFinishTimeGreaterThanOrEqual") 
			}
		}
		
		public var expectedFinishTimeLessThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("expectedFinishTimeLessThanOrEqual") 
			}
		}
	}

	public var freeText: String? = nil
	public var expectedFinishTimeGreaterThanOrEqual: Int? = nil
	public var expectedFinishTimeLessThanOrEqual: Int? = nil


	public func setMultiRequestToken(freeText: String) {
		self.dict["freeText"] = freeText
	}
	
	public func setMultiRequestToken(expectedFinishTimeGreaterThanOrEqual: String) {
		self.dict["expectedFinishTimeGreaterThanOrEqual"] = expectedFinishTimeGreaterThanOrEqual
	}
	
	public func setMultiRequestToken(expectedFinishTimeLessThanOrEqual: String) {
		self.dict["expectedFinishTimeLessThanOrEqual"] = expectedFinishTimeLessThanOrEqual
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["freeText"] != nil {
			freeText = dict["freeText"] as? String
		}
		if dict["expectedFinishTimeGreaterThanOrEqual"] != nil {
			expectedFinishTimeGreaterThanOrEqual = dict["expectedFinishTimeGreaterThanOrEqual"] as? Int
		}
		if dict["expectedFinishTimeLessThanOrEqual"] != nil {
			expectedFinishTimeLessThanOrEqual = dict["expectedFinishTimeLessThanOrEqual"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(freeText != nil) {
			dict["freeText"] = freeText!
		}
		if(expectedFinishTimeGreaterThanOrEqual != nil) {
			dict["expectedFinishTimeGreaterThanOrEqual"] = expectedFinishTimeGreaterThanOrEqual!
		}
		if(expectedFinishTimeLessThanOrEqual != nil) {
			dict["expectedFinishTimeLessThanOrEqual"] = expectedFinishTimeLessThanOrEqual!
		}
		return dict
	}
}

