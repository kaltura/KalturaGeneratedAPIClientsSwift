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

open class AdCuePointBaseFilter: CuePointFilter {

	public var protocolTypeEqual: AdProtocolType? = nil
	public var protocolTypeIn: String? = nil
	public var titleLike: String? = nil
	public var titleMultiLikeOr: String? = nil
	public var titleMultiLikeAnd: String? = nil
	public var endTimeGreaterThanOrEqual: Int? = nil
	public var endTimeLessThanOrEqual: Int? = nil
	public var durationGreaterThanOrEqual: Int? = nil
	public var durationLessThanOrEqual: Int? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["protocolTypeEqual"] != nil {
			protocolTypeEqual = AdProtocolType(rawValue: "\(dict["protocolTypeEqual"]!)")
		}
		if dict["protocolTypeIn"] != nil {
			protocolTypeIn = dict["protocolTypeIn"] as? String
		}
		if dict["titleLike"] != nil {
			titleLike = dict["titleLike"] as? String
		}
		if dict["titleMultiLikeOr"] != nil {
			titleMultiLikeOr = dict["titleMultiLikeOr"] as? String
		}
		if dict["titleMultiLikeAnd"] != nil {
			titleMultiLikeAnd = dict["titleMultiLikeAnd"] as? String
		}
		if dict["endTimeGreaterThanOrEqual"] != nil {
			endTimeGreaterThanOrEqual = dict["endTimeGreaterThanOrEqual"] as? Int
		}
		if dict["endTimeLessThanOrEqual"] != nil {
			endTimeLessThanOrEqual = dict["endTimeLessThanOrEqual"] as? Int
		}
		if dict["durationGreaterThanOrEqual"] != nil {
			durationGreaterThanOrEqual = dict["durationGreaterThanOrEqual"] as? Int
		}
		if dict["durationLessThanOrEqual"] != nil {
			durationLessThanOrEqual = dict["durationLessThanOrEqual"] as? Int
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(protocolTypeEqual != nil) {
			dict["protocolTypeEqual"] = protocolTypeEqual!.rawValue
		}
		if(protocolTypeIn != nil) {
			dict["protocolTypeIn"] = protocolTypeIn!
		}
		if(titleLike != nil) {
			dict["titleLike"] = titleLike!
		}
		if(titleMultiLikeOr != nil) {
			dict["titleMultiLikeOr"] = titleMultiLikeOr!
		}
		if(titleMultiLikeAnd != nil) {
			dict["titleMultiLikeAnd"] = titleMultiLikeAnd!
		}
		if(endTimeGreaterThanOrEqual != nil) {
			dict["endTimeGreaterThanOrEqual"] = endTimeGreaterThanOrEqual!
		}
		if(endTimeLessThanOrEqual != nil) {
			dict["endTimeLessThanOrEqual"] = endTimeLessThanOrEqual!
		}
		if(durationGreaterThanOrEqual != nil) {
			dict["durationGreaterThanOrEqual"] = durationGreaterThanOrEqual!
		}
		if(durationLessThanOrEqual != nil) {
			dict["durationLessThanOrEqual"] = durationLessThanOrEqual!
		}
		return dict
	}
}

