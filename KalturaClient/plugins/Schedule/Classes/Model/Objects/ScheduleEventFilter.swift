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

open class ScheduleEventFilter: ScheduleEventBaseFilter {

	public var resourceIdsLike: String? = nil
	public var resourceIdsMultiLikeOr: String? = nil
	public var resourceIdsMultiLikeAnd: String? = nil
	public var parentResourceIdsLike: String? = nil
	public var parentResourceIdsMultiLikeOr: String? = nil
	public var parentResourceIdsMultiLikeAnd: String? = nil
	public var templateEntryCategoriesIdsMultiLikeAnd: String? = nil
	public var templateEntryCategoriesIdsMultiLikeOr: String? = nil
	public var resourceSystemNamesMultiLikeOr: String? = nil
	public var templateEntryCategoriesIdsLike: String? = nil
	public var resourceSystemNamesMultiLikeAnd: String? = nil
	public var resourceSystemNamesLike: String? = nil
	public var resourceIdEqual: String? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["resourceIdsLike"] != nil {
			resourceIdsLike = dict["resourceIdsLike"] as? String
		}
		if dict["resourceIdsMultiLikeOr"] != nil {
			resourceIdsMultiLikeOr = dict["resourceIdsMultiLikeOr"] as? String
		}
		if dict["resourceIdsMultiLikeAnd"] != nil {
			resourceIdsMultiLikeAnd = dict["resourceIdsMultiLikeAnd"] as? String
		}
		if dict["parentResourceIdsLike"] != nil {
			parentResourceIdsLike = dict["parentResourceIdsLike"] as? String
		}
		if dict["parentResourceIdsMultiLikeOr"] != nil {
			parentResourceIdsMultiLikeOr = dict["parentResourceIdsMultiLikeOr"] as? String
		}
		if dict["parentResourceIdsMultiLikeAnd"] != nil {
			parentResourceIdsMultiLikeAnd = dict["parentResourceIdsMultiLikeAnd"] as? String
		}
		if dict["templateEntryCategoriesIdsMultiLikeAnd"] != nil {
			templateEntryCategoriesIdsMultiLikeAnd = dict["templateEntryCategoriesIdsMultiLikeAnd"] as? String
		}
		if dict["templateEntryCategoriesIdsMultiLikeOr"] != nil {
			templateEntryCategoriesIdsMultiLikeOr = dict["templateEntryCategoriesIdsMultiLikeOr"] as? String
		}
		if dict["resourceSystemNamesMultiLikeOr"] != nil {
			resourceSystemNamesMultiLikeOr = dict["resourceSystemNamesMultiLikeOr"] as? String
		}
		if dict["templateEntryCategoriesIdsLike"] != nil {
			templateEntryCategoriesIdsLike = dict["templateEntryCategoriesIdsLike"] as? String
		}
		if dict["resourceSystemNamesMultiLikeAnd"] != nil {
			resourceSystemNamesMultiLikeAnd = dict["resourceSystemNamesMultiLikeAnd"] as? String
		}
		if dict["resourceSystemNamesLike"] != nil {
			resourceSystemNamesLike = dict["resourceSystemNamesLike"] as? String
		}
		if dict["resourceIdEqual"] != nil {
			resourceIdEqual = dict["resourceIdEqual"] as? String
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(resourceIdsLike != nil) {
			dict["resourceIdsLike"] = resourceIdsLike!
		}
		if(resourceIdsMultiLikeOr != nil) {
			dict["resourceIdsMultiLikeOr"] = resourceIdsMultiLikeOr!
		}
		if(resourceIdsMultiLikeAnd != nil) {
			dict["resourceIdsMultiLikeAnd"] = resourceIdsMultiLikeAnd!
		}
		if(parentResourceIdsLike != nil) {
			dict["parentResourceIdsLike"] = parentResourceIdsLike!
		}
		if(parentResourceIdsMultiLikeOr != nil) {
			dict["parentResourceIdsMultiLikeOr"] = parentResourceIdsMultiLikeOr!
		}
		if(parentResourceIdsMultiLikeAnd != nil) {
			dict["parentResourceIdsMultiLikeAnd"] = parentResourceIdsMultiLikeAnd!
		}
		if(templateEntryCategoriesIdsMultiLikeAnd != nil) {
			dict["templateEntryCategoriesIdsMultiLikeAnd"] = templateEntryCategoriesIdsMultiLikeAnd!
		}
		if(templateEntryCategoriesIdsMultiLikeOr != nil) {
			dict["templateEntryCategoriesIdsMultiLikeOr"] = templateEntryCategoriesIdsMultiLikeOr!
		}
		if(resourceSystemNamesMultiLikeOr != nil) {
			dict["resourceSystemNamesMultiLikeOr"] = resourceSystemNamesMultiLikeOr!
		}
		if(templateEntryCategoriesIdsLike != nil) {
			dict["templateEntryCategoriesIdsLike"] = templateEntryCategoriesIdsLike!
		}
		if(resourceSystemNamesMultiLikeAnd != nil) {
			dict["resourceSystemNamesMultiLikeAnd"] = resourceSystemNamesMultiLikeAnd!
		}
		if(resourceSystemNamesLike != nil) {
			dict["resourceSystemNamesLike"] = resourceSystemNamesLike!
		}
		if(resourceIdEqual != nil) {
			dict["resourceIdEqual"] = resourceIdEqual!
		}
		return dict
	}
}

