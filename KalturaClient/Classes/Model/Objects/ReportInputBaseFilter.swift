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

open class ReportInputBaseFilter: ObjectBase {

	public class ReportInputBaseFilterTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var fromDate: BaseTokenizedObject {
			get {
				return self.append("fromDate") 
			}
		}
		
		public var toDate: BaseTokenizedObject {
			get {
				return self.append("toDate") 
			}
		}
		
		public var fromDay: BaseTokenizedObject {
			get {
				return self.append("fromDay") 
			}
		}
		
		public var toDay: BaseTokenizedObject {
			get {
				return self.append("toDay") 
			}
		}
	}

	/**  Start date as Unix timestamp (In seconds)  */
	public var fromDate: Int? = nil
	/**  End date as Unix timestamp (In seconds)  */
	public var toDate: Int? = nil
	/**  Start day as string (YYYYMMDD)  */
	public var fromDay: String? = nil
	/**  End date as string (YYYYMMDD)  */
	public var toDay: String? = nil


	public func setMultiRequestToken(fromDate: String) {
		self.dict["fromDate"] = fromDate
	}
	
	public func setMultiRequestToken(toDate: String) {
		self.dict["toDate"] = toDate
	}
	
	public func setMultiRequestToken(fromDay: String) {
		self.dict["fromDay"] = fromDay
	}
	
	public func setMultiRequestToken(toDay: String) {
		self.dict["toDay"] = toDay
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["fromDate"] != nil {
			fromDate = dict["fromDate"] as? Int
		}
		if dict["toDate"] != nil {
			toDate = dict["toDate"] as? Int
		}
		if dict["fromDay"] != nil {
			fromDay = dict["fromDay"] as? String
		}
		if dict["toDay"] != nil {
			toDay = dict["toDay"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(fromDate != nil) {
			dict["fromDate"] = fromDate!
		}
		if(toDate != nil) {
			dict["toDate"] = toDate!
		}
		if(fromDay != nil) {
			dict["fromDay"] = fromDay!
		}
		if(toDay != nil) {
			dict["toDay"] = toDay!
		}
		return dict
	}
}

