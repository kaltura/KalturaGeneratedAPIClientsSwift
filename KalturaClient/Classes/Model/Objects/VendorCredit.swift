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

open class VendorCredit: BaseVendorCredit {

	public class VendorCreditTokenizer: BaseVendorCredit.BaseVendorCreditTokenizer {
		
		public var credit: BaseTokenizedObject {
			get {
				return self.append("credit") 
			}
		}
		
		public var fromDate: BaseTokenizedObject {
			get {
				return self.append("fromDate") 
			}
		}
		
		public var overageCredit: BaseTokenizedObject {
			get {
				return self.append("overageCredit") 
			}
		}
		
		public var addOn: BaseTokenizedObject {
			get {
				return self.append("addOn") 
			}
		}
	}

	public var credit: Int? = nil
	public var fromDate: Int? = nil
	public var overageCredit: Int? = nil
	public var addOn: Int? = nil


	public func setMultiRequestToken(credit: String) {
		self.dict["credit"] = credit
	}
	
	public func setMultiRequestToken(fromDate: String) {
		self.dict["fromDate"] = fromDate
	}
	
	public func setMultiRequestToken(overageCredit: String) {
		self.dict["overageCredit"] = overageCredit
	}
	
	public func setMultiRequestToken(addOn: String) {
		self.dict["addOn"] = addOn
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["credit"] != nil {
			credit = dict["credit"] as? Int
		}
		if dict["fromDate"] != nil {
			fromDate = dict["fromDate"] as? Int
		}
		if dict["overageCredit"] != nil {
			overageCredit = dict["overageCredit"] as? Int
		}
		if dict["addOn"] != nil {
			addOn = dict["addOn"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(credit != nil) {
			dict["credit"] = credit!
		}
		if(fromDate != nil) {
			dict["fromDate"] = fromDate!
		}
		if(overageCredit != nil) {
			dict["overageCredit"] = overageCredit!
		}
		if(addOn != nil) {
			dict["addOn"] = addOn!
		}
		return dict
	}
}

