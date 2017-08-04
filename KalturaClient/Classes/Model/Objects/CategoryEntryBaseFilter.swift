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

open class CategoryEntryBaseFilter: RelatedFilter {

	public var categoryIdEqual: Int? = nil
	public var categoryIdIn: String? = nil
	public var entryIdEqual: String? = nil
	public var entryIdIn: String? = nil
	public var createdAtGreaterThanOrEqual: Int? = nil
	public var createdAtLessThanOrEqual: Int? = nil
	public var categoryFullIdsStartsWith: String? = nil
	public var statusEqual: CategoryEntryStatus? = nil
	public var statusIn: String? = nil
	public var creatorUserIdEqual: String? = nil
	public var creatorUserIdIn: String? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["categoryIdEqual"] != nil {
			categoryIdEqual = dict["categoryIdEqual"] as? Int
		}
		if dict["categoryIdIn"] != nil {
			categoryIdIn = dict["categoryIdIn"] as? String
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
		if dict["categoryFullIdsStartsWith"] != nil {
			categoryFullIdsStartsWith = dict["categoryFullIdsStartsWith"] as? String
		}
		if dict["statusEqual"] != nil {
			statusEqual = CategoryEntryStatus(rawValue: (dict["statusEqual"] as? Int)!)
		}
		if dict["statusIn"] != nil {
			statusIn = dict["statusIn"] as? String
		}
		if dict["creatorUserIdEqual"] != nil {
			creatorUserIdEqual = dict["creatorUserIdEqual"] as? String
		}
		if dict["creatorUserIdIn"] != nil {
			creatorUserIdIn = dict["creatorUserIdIn"] as? String
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(categoryIdEqual != nil) {
			dict["categoryIdEqual"] = categoryIdEqual!
		}
		if(categoryIdIn != nil) {
			dict["categoryIdIn"] = categoryIdIn!
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
		if(categoryFullIdsStartsWith != nil) {
			dict["categoryFullIdsStartsWith"] = categoryFullIdsStartsWith!
		}
		if(statusEqual != nil) {
			dict["statusEqual"] = statusEqual!.rawValue
		}
		if(statusIn != nil) {
			dict["statusIn"] = statusIn!
		}
		if(creatorUserIdEqual != nil) {
			dict["creatorUserIdEqual"] = creatorUserIdEqual!
		}
		if(creatorUserIdIn != nil) {
			dict["creatorUserIdIn"] = creatorUserIdIn!
		}
		return dict
	}
}

