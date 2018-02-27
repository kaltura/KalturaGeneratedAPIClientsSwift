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

open class CountryRestriction: BaseRestriction {

	public class CountryRestrictionTokenizer: BaseRestriction.BaseRestrictionTokenizer {
		
		public var countryRestrictionType: BaseTokenizedObject {
			get {
				return self.append("countryRestrictionType") 
			}
		}
		
		public var countryList: BaseTokenizedObject {
			get {
				return self.append("countryList") 
			}
		}
	}

	/**  Country restriction type (Allow or deny)  */
	public var countryRestrictionType: CountryRestrictionType? = nil
	/**  Comma separated list of country codes to allow to deny  */
	public var countryList: String? = nil


	public func setMultiRequestToken(countryRestrictionType: String) {
		self.dict["countryRestrictionType"] = countryRestrictionType
	}
	
	public func setMultiRequestToken(countryList: String) {
		self.dict["countryList"] = countryList
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["countryRestrictionType"] != nil {
			countryRestrictionType = CountryRestrictionType(rawValue: (dict["countryRestrictionType"] as? Int)!)
		}
		if dict["countryList"] != nil {
			countryList = dict["countryList"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(countryRestrictionType != nil) {
			dict["countryRestrictionType"] = countryRestrictionType!.rawValue
		}
		if(countryList != nil) {
			dict["countryList"] = countryList!
		}
		return dict
	}
}

