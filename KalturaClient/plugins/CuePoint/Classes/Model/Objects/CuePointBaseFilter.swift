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
 * This class was generated using exec.php
 * against an XML schema provided by Kaltura.
 * 
 * MANUAL CHANGES TO THIS CLASS WILL BE OVERWRITTEN.
 */

open class CuePointBaseFilter: RelatedFilter {

	public var idEqual: String? = nil
	public var idIn: String? = nil
	public var cuePointTypeEqual: CuePointType? = nil
	public var cuePointTypeIn: String? = nil
	public var statusEqual: CuePointStatus? = nil
	public var statusIn: String? = nil
	public var entryIdEqual: String? = nil
	public var entryIdIn: String? = nil
	public var createdAtGreaterThanOrEqual: Int? = nil
	public var createdAtLessThanOrEqual: Int? = nil
	public var updatedAtGreaterThanOrEqual: Int? = nil
	public var updatedAtLessThanOrEqual: Int? = nil
	public var triggeredAtGreaterThanOrEqual: Int? = nil
	public var triggeredAtLessThanOrEqual: Int? = nil
	public var tagsLike: String? = nil
	public var tagsMultiLikeOr: String? = nil
	public var tagsMultiLikeAnd: String? = nil
	public var startTimeGreaterThanOrEqual: Int? = nil
	public var startTimeLessThanOrEqual: Int? = nil
	public var userIdEqual: String? = nil
	public var userIdIn: String? = nil
	public var partnerSortValueEqual: Int? = nil
	public var partnerSortValueIn: String? = nil
	public var partnerSortValueGreaterThanOrEqual: Int? = nil
	public var partnerSortValueLessThanOrEqual: Int? = nil
	public var forceStopEqual: Bool? = nil
	public var systemNameEqual: String? = nil
	public var systemNameIn: String? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["idEqual"] != nil {
			idEqual = dict["idEqual"] as? String
		}
		if dict["idIn"] != nil {
			idIn = dict["idIn"] as? String
		}
		if dict["cuePointTypeEqual"] != nil {
			cuePointTypeEqual = CuePointType(rawValue: "\(dict["cuePointTypeEqual"]!)")
		}
		if dict["cuePointTypeIn"] != nil {
			cuePointTypeIn = dict["cuePointTypeIn"] as? String
		}
		if dict["statusEqual"] != nil {
			statusEqual = CuePointStatus(rawValue: (dict["statusEqual"] as? Int)!)
		}
		if dict["statusIn"] != nil {
			statusIn = dict["statusIn"] as? String
		}
		if dict["entryIdEqual"] != nil {
			entryIdEqual = dict["entryIdEqual"] as? String
		}
		if dict["entryIdIn"] != nil {
			entryIdIn = dict["entryIdIn"] as? String
		}
		if dict["createdAtGreaterThanOrEqual"] != nil {
			createdAtGreaterThanOrEqual = dict["createdAtGreaterThanOrEqual"] as? Int
		}
		if dict["createdAtLessThanOrEqual"] != nil {
			createdAtLessThanOrEqual = dict["createdAtLessThanOrEqual"] as? Int
		}
		if dict["updatedAtGreaterThanOrEqual"] != nil {
			updatedAtGreaterThanOrEqual = dict["updatedAtGreaterThanOrEqual"] as? Int
		}
		if dict["updatedAtLessThanOrEqual"] != nil {
			updatedAtLessThanOrEqual = dict["updatedAtLessThanOrEqual"] as? Int
		}
		if dict["triggeredAtGreaterThanOrEqual"] != nil {
			triggeredAtGreaterThanOrEqual = dict["triggeredAtGreaterThanOrEqual"] as? Int
		}
		if dict["triggeredAtLessThanOrEqual"] != nil {
			triggeredAtLessThanOrEqual = dict["triggeredAtLessThanOrEqual"] as? Int
		}
		if dict["tagsLike"] != nil {
			tagsLike = dict["tagsLike"] as? String
		}
		if dict["tagsMultiLikeOr"] != nil {
			tagsMultiLikeOr = dict["tagsMultiLikeOr"] as? String
		}
		if dict["tagsMultiLikeAnd"] != nil {
			tagsMultiLikeAnd = dict["tagsMultiLikeAnd"] as? String
		}
		if dict["startTimeGreaterThanOrEqual"] != nil {
			startTimeGreaterThanOrEqual = dict["startTimeGreaterThanOrEqual"] as? Int
		}
		if dict["startTimeLessThanOrEqual"] != nil {
			startTimeLessThanOrEqual = dict["startTimeLessThanOrEqual"] as? Int
		}
		if dict["userIdEqual"] != nil {
			userIdEqual = dict["userIdEqual"] as? String
		}
		if dict["userIdIn"] != nil {
			userIdIn = dict["userIdIn"] as? String
		}
		if dict["partnerSortValueEqual"] != nil {
			partnerSortValueEqual = dict["partnerSortValueEqual"] as? Int
		}
		if dict["partnerSortValueIn"] != nil {
			partnerSortValueIn = dict["partnerSortValueIn"] as? String
		}
		if dict["partnerSortValueGreaterThanOrEqual"] != nil {
			partnerSortValueGreaterThanOrEqual = dict["partnerSortValueGreaterThanOrEqual"] as? Int
		}
		if dict["partnerSortValueLessThanOrEqual"] != nil {
			partnerSortValueLessThanOrEqual = dict["partnerSortValueLessThanOrEqual"] as? Int
		}
		if dict["forceStopEqual"] != nil {
			forceStopEqual = dict["forceStopEqual"] as? Bool
		}
		if dict["systemNameEqual"] != nil {
			systemNameEqual = dict["systemNameEqual"] as? String
		}
		if dict["systemNameIn"] != nil {
			systemNameIn = dict["systemNameIn"] as? String
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(idEqual != nil) {
			dict["idEqual"] = idEqual!
		}
		if(idIn != nil) {
			dict["idIn"] = idIn!
		}
		if(cuePointTypeEqual != nil) {
			dict["cuePointTypeEqual"] = cuePointTypeEqual!.rawValue
		}
		if(cuePointTypeIn != nil) {
			dict["cuePointTypeIn"] = cuePointTypeIn!
		}
		if(statusEqual != nil) {
			dict["statusEqual"] = statusEqual!.rawValue
		}
		if(statusIn != nil) {
			dict["statusIn"] = statusIn!
		}
		if(entryIdEqual != nil) {
			dict["entryIdEqual"] = entryIdEqual!
		}
		if(entryIdIn != nil) {
			dict["entryIdIn"] = entryIdIn!
		}
		if(createdAtGreaterThanOrEqual != nil) {
			dict["createdAtGreaterThanOrEqual"] = createdAtGreaterThanOrEqual!
		}
		if(createdAtLessThanOrEqual != nil) {
			dict["createdAtLessThanOrEqual"] = createdAtLessThanOrEqual!
		}
		if(updatedAtGreaterThanOrEqual != nil) {
			dict["updatedAtGreaterThanOrEqual"] = updatedAtGreaterThanOrEqual!
		}
		if(updatedAtLessThanOrEqual != nil) {
			dict["updatedAtLessThanOrEqual"] = updatedAtLessThanOrEqual!
		}
		if(triggeredAtGreaterThanOrEqual != nil) {
			dict["triggeredAtGreaterThanOrEqual"] = triggeredAtGreaterThanOrEqual!
		}
		if(triggeredAtLessThanOrEqual != nil) {
			dict["triggeredAtLessThanOrEqual"] = triggeredAtLessThanOrEqual!
		}
		if(tagsLike != nil) {
			dict["tagsLike"] = tagsLike!
		}
		if(tagsMultiLikeOr != nil) {
			dict["tagsMultiLikeOr"] = tagsMultiLikeOr!
		}
		if(tagsMultiLikeAnd != nil) {
			dict["tagsMultiLikeAnd"] = tagsMultiLikeAnd!
		}
		if(startTimeGreaterThanOrEqual != nil) {
			dict["startTimeGreaterThanOrEqual"] = startTimeGreaterThanOrEqual!
		}
		if(startTimeLessThanOrEqual != nil) {
			dict["startTimeLessThanOrEqual"] = startTimeLessThanOrEqual!
		}
		if(userIdEqual != nil) {
			dict["userIdEqual"] = userIdEqual!
		}
		if(userIdIn != nil) {
			dict["userIdIn"] = userIdIn!
		}
		if(partnerSortValueEqual != nil) {
			dict["partnerSortValueEqual"] = partnerSortValueEqual!
		}
		if(partnerSortValueIn != nil) {
			dict["partnerSortValueIn"] = partnerSortValueIn!
		}
		if(partnerSortValueGreaterThanOrEqual != nil) {
			dict["partnerSortValueGreaterThanOrEqual"] = partnerSortValueGreaterThanOrEqual!
		}
		if(partnerSortValueLessThanOrEqual != nil) {
			dict["partnerSortValueLessThanOrEqual"] = partnerSortValueLessThanOrEqual!
		}
		if(forceStopEqual != nil) {
			dict["forceStopEqual"] = forceStopEqual!
		}
		if(systemNameEqual != nil) {
			dict["systemNameEqual"] = systemNameEqual!
		}
		if(systemNameIn != nil) {
			dict["systemNameIn"] = systemNameIn!
		}
		return dict
	}
}

