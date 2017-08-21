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

open class ThumbAssetBaseFilter: AssetFilter {

	public var thumbParamsIdEqual: Int? = nil
	public var thumbParamsIdIn: String? = nil
	public var statusEqual: ThumbAssetStatus? = nil
	public var statusIn: String? = nil
	public var statusNotIn: String? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["thumbParamsIdEqual"] != nil {
			thumbParamsIdEqual = dict["thumbParamsIdEqual"] as? Int
		}
		if dict["thumbParamsIdIn"] != nil {
			thumbParamsIdIn = dict["thumbParamsIdIn"] as? String
		}
		if dict["statusEqual"] != nil {
			statusEqual = ThumbAssetStatus(rawValue: (dict["statusEqual"] as? Int)!)
		}
		if dict["statusIn"] != nil {
			statusIn = dict["statusIn"] as? String
		}
		if dict["statusNotIn"] != nil {
			statusNotIn = dict["statusNotIn"] as? String
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(thumbParamsIdEqual != nil) {
			dict["thumbParamsIdEqual"] = thumbParamsIdEqual!
		}
		if(thumbParamsIdIn != nil) {
			dict["thumbParamsIdIn"] = thumbParamsIdIn!
		}
		if(statusEqual != nil) {
			dict["statusEqual"] = statusEqual!.rawValue
		}
		if(statusIn != nil) {
			dict["statusIn"] = statusIn!
		}
		if(statusNotIn != nil) {
			dict["statusNotIn"] = statusNotIn!
		}
		return dict
	}
}

