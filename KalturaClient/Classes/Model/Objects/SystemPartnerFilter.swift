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

open class SystemPartnerFilter: PartnerFilter {

	public class SystemPartnerFilterTokenizer: PartnerFilter.PartnerFilterTokenizer {
		
		public var partnerParentIdEqual: BaseTokenizedObject {
			get {
				return self.append("partnerParentIdEqual") 
			}
		}
		
		public var partnerParentIdIn: BaseTokenizedObject {
			get {
				return self.append("partnerParentIdIn") 
			}
		}
		
		public var adminEmailEqual: BaseTokenizedObject {
			get {
				return self.append("adminEmailEqual") 
			}
		}
	}

	public var partnerParentIdEqual: Int? = nil
	public var partnerParentIdIn: String? = nil
	public var adminEmailEqual: String? = nil


	public func setMultiRequestToken(partnerParentIdEqual: String) {
		self.dict["partnerParentIdEqual"] = partnerParentIdEqual
	}
	
	public func setMultiRequestToken(partnerParentIdIn: String) {
		self.dict["partnerParentIdIn"] = partnerParentIdIn
	}
	
	public func setMultiRequestToken(adminEmailEqual: String) {
		self.dict["adminEmailEqual"] = adminEmailEqual
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["partnerParentIdEqual"] != nil {
			partnerParentIdEqual = dict["partnerParentIdEqual"] as? Int
		}
		if dict["partnerParentIdIn"] != nil {
			partnerParentIdIn = dict["partnerParentIdIn"] as? String
		}
		if dict["adminEmailEqual"] != nil {
			adminEmailEqual = dict["adminEmailEqual"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(partnerParentIdEqual != nil) {
			dict["partnerParentIdEqual"] = partnerParentIdEqual!
		}
		if(partnerParentIdIn != nil) {
			dict["partnerParentIdIn"] = partnerParentIdIn!
		}
		if(adminEmailEqual != nil) {
			dict["adminEmailEqual"] = adminEmailEqual!
		}
		return dict
	}
}

