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

open class SystemPartnerUsageFilter: Filter {

	public class SystemPartnerUsageFilterTokenizer: Filter.FilterTokenizer {
		
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
		
		public var timezoneOffset: BaseTokenizedObject {
			get {
				return self.append("timezoneOffset") 
			}
		}
	}

	/**  Date range from  */
	public var fromDate: Int? = nil
	/**  Date range to  */
	public var toDate: Int? = nil
	/**  Time zone offset  */
	public var timezoneOffset: Int? = nil


	public func setMultiRequestToken(fromDate: String) {
		self.dict["fromDate"] = fromDate
	}
	
	public func setMultiRequestToken(toDate: String) {
		self.dict["toDate"] = toDate
	}
	
	public func setMultiRequestToken(timezoneOffset: String) {
		self.dict["timezoneOffset"] = timezoneOffset
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
		if dict["timezoneOffset"] != nil {
			timezoneOffset = dict["timezoneOffset"] as? Int
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(fromDate != nil) {
			dict["fromDate"] = fromDate!
		}
		if(toDate != nil) {
			dict["toDate"] = toDate!
		}
		if(timezoneOffset != nil) {
			dict["timezoneOffset"] = timezoneOffset!
		}
		return dict
	}
}

