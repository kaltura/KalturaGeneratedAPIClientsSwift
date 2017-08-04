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

open class CaptionAssetItemFilter: CaptionAssetFilter {

	public var contentLike: String? = nil
	public var contentMultiLikeOr: String? = nil
	public var contentMultiLikeAnd: String? = nil
	public var partnerDescriptionLike: String? = nil
	public var partnerDescriptionMultiLikeOr: String? = nil
	public var partnerDescriptionMultiLikeAnd: String? = nil
	public var languageEqual: Language? = nil
	public var languageIn: String? = nil
	public var labelEqual: String? = nil
	public var labelIn: String? = nil
	public var startTimeGreaterThanOrEqual: Int? = nil
	public var startTimeLessThanOrEqual: Int? = nil
	public var endTimeGreaterThanOrEqual: Int? = nil
	public var endTimeLessThanOrEqual: Int? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["contentLike"] != nil {
			contentLike = dict["contentLike"] as? String
		}
		if dict["contentMultiLikeOr"] != nil {
			contentMultiLikeOr = dict["contentMultiLikeOr"] as? String
		}
		if dict["contentMultiLikeAnd"] != nil {
			contentMultiLikeAnd = dict["contentMultiLikeAnd"] as? String
		}
		if dict["partnerDescriptionLike"] != nil {
			partnerDescriptionLike = dict["partnerDescriptionLike"] as? String
		}
		if dict["partnerDescriptionMultiLikeOr"] != nil {
			partnerDescriptionMultiLikeOr = dict["partnerDescriptionMultiLikeOr"] as? String
		}
		if dict["partnerDescriptionMultiLikeAnd"] != nil {
			partnerDescriptionMultiLikeAnd = dict["partnerDescriptionMultiLikeAnd"] as? String
		}
		if dict["languageEqual"] != nil {
			languageEqual = Language(rawValue: "\(dict["languageEqual"]!)")
		}
		if dict["languageIn"] != nil {
			languageIn = dict["languageIn"] as? String
		}
		if dict["labelEqual"] != nil {
			labelEqual = dict["labelEqual"] as? String
		}
		if dict["labelIn"] != nil {
			labelIn = dict["labelIn"] as? String
		}
		if dict["startTimeGreaterThanOrEqual"] != nil {
			startTimeGreaterThanOrEqual = dict["startTimeGreaterThanOrEqual"] as? Int
		}
		if dict["startTimeLessThanOrEqual"] != nil {
			startTimeLessThanOrEqual = dict["startTimeLessThanOrEqual"] as? Int
		}
		if dict["endTimeGreaterThanOrEqual"] != nil {
			endTimeGreaterThanOrEqual = dict["endTimeGreaterThanOrEqual"] as? Int
		}
		if dict["endTimeLessThanOrEqual"] != nil {
			endTimeLessThanOrEqual = dict["endTimeLessThanOrEqual"] as? Int
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(contentLike != nil) {
			dict["contentLike"] = contentLike!
		}
		if(contentMultiLikeOr != nil) {
			dict["contentMultiLikeOr"] = contentMultiLikeOr!
		}
		if(contentMultiLikeAnd != nil) {
			dict["contentMultiLikeAnd"] = contentMultiLikeAnd!
		}
		if(partnerDescriptionLike != nil) {
			dict["partnerDescriptionLike"] = partnerDescriptionLike!
		}
		if(partnerDescriptionMultiLikeOr != nil) {
			dict["partnerDescriptionMultiLikeOr"] = partnerDescriptionMultiLikeOr!
		}
		if(partnerDescriptionMultiLikeAnd != nil) {
			dict["partnerDescriptionMultiLikeAnd"] = partnerDescriptionMultiLikeAnd!
		}
		if(languageEqual != nil) {
			dict["languageEqual"] = languageEqual!.rawValue
		}
		if(languageIn != nil) {
			dict["languageIn"] = languageIn!
		}
		if(labelEqual != nil) {
			dict["labelEqual"] = labelEqual!
		}
		if(labelIn != nil) {
			dict["labelIn"] = labelIn!
		}
		if(startTimeGreaterThanOrEqual != nil) {
			dict["startTimeGreaterThanOrEqual"] = startTimeGreaterThanOrEqual!
		}
		if(startTimeLessThanOrEqual != nil) {
			dict["startTimeLessThanOrEqual"] = startTimeLessThanOrEqual!
		}
		if(endTimeGreaterThanOrEqual != nil) {
			dict["endTimeGreaterThanOrEqual"] = endTimeGreaterThanOrEqual!
		}
		if(endTimeLessThanOrEqual != nil) {
			dict["endTimeLessThanOrEqual"] = endTimeLessThanOrEqual!
		}
		return dict
	}
}

