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

open class SiteRestriction: BaseRestriction {

	public class SiteRestrictionTokenizer: BaseRestriction.BaseRestrictionTokenizer {
		
		public var siteRestrictionType: BaseTokenizedObject {
			get {
				return self.append("siteRestrictionType") 
			}
		}
		
		public var siteList: BaseTokenizedObject {
			get {
				return self.append("siteList") 
			}
		}
	}

	/**  The site restriction type (allow or deny)  */
	public var siteRestrictionType: SiteRestrictionType? = nil
	/**  Comma separated list of sites (domains) to allow or deny  */
	public var siteList: String? = nil


	public func setMultiRequestToken(siteRestrictionType: String) {
		self.dict["siteRestrictionType"] = siteRestrictionType
	}
	
	public func setMultiRequestToken(siteList: String) {
		self.dict["siteList"] = siteList
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["siteRestrictionType"] != nil {
			siteRestrictionType = SiteRestrictionType(rawValue: (dict["siteRestrictionType"] as? Int)!)
		}
		if dict["siteList"] != nil {
			siteList = dict["siteList"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(siteRestrictionType != nil) {
			dict["siteRestrictionType"] = siteRestrictionType!.rawValue
		}
		if(siteList != nil) {
			dict["siteList"] = siteList!
		}
		return dict
	}
}

