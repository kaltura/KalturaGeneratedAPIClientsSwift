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

open class EntryScheduleEventBaseFilter: ScheduleEventFilter {

	public var templateEntryIdEqual: String? = nil
	public var entryIdsLike: String? = nil
	public var entryIdsMultiLikeOr: String? = nil
	public var entryIdsMultiLikeAnd: String? = nil
	public var categoryIdsLike: String? = nil
	public var categoryIdsMultiLikeOr: String? = nil
	public var categoryIdsMultiLikeAnd: String? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["templateEntryIdEqual"] != nil {
			templateEntryIdEqual = dict["templateEntryIdEqual"] as? String
		}
		if dict["entryIdsLike"] != nil {
			entryIdsLike = dict["entryIdsLike"] as? String
		}
		if dict["entryIdsMultiLikeOr"] != nil {
			entryIdsMultiLikeOr = dict["entryIdsMultiLikeOr"] as? String
		}
		if dict["entryIdsMultiLikeAnd"] != nil {
			entryIdsMultiLikeAnd = dict["entryIdsMultiLikeAnd"] as? String
		}
		if dict["categoryIdsLike"] != nil {
			categoryIdsLike = dict["categoryIdsLike"] as? String
		}
		if dict["categoryIdsMultiLikeOr"] != nil {
			categoryIdsMultiLikeOr = dict["categoryIdsMultiLikeOr"] as? String
		}
		if dict["categoryIdsMultiLikeAnd"] != nil {
			categoryIdsMultiLikeAnd = dict["categoryIdsMultiLikeAnd"] as? String
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(templateEntryIdEqual != nil) {
			dict["templateEntryIdEqual"] = templateEntryIdEqual!
		}
		if(entryIdsLike != nil) {
			dict["entryIdsLike"] = entryIdsLike!
		}
		if(entryIdsMultiLikeOr != nil) {
			dict["entryIdsMultiLikeOr"] = entryIdsMultiLikeOr!
		}
		if(entryIdsMultiLikeAnd != nil) {
			dict["entryIdsMultiLikeAnd"] = entryIdsMultiLikeAnd!
		}
		if(categoryIdsLike != nil) {
			dict["categoryIdsLike"] = categoryIdsLike!
		}
		if(categoryIdsMultiLikeOr != nil) {
			dict["categoryIdsMultiLikeOr"] = categoryIdsMultiLikeOr!
		}
		if(categoryIdsMultiLikeAnd != nil) {
			dict["categoryIdsMultiLikeAnd"] = categoryIdsMultiLikeAnd!
		}
		return dict
	}
}

