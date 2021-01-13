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
// Copyright (C) 2006-2021  Kaltura Inc.
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

open class EntryScheduleEventFilter: EntryScheduleEventBaseFilter {

	public class EntryScheduleEventFilterTokenizer: EntryScheduleEventBaseFilter.EntryScheduleEventBaseFilterTokenizer {
		
		public var parentCategoryIdsLike: BaseTokenizedObject {
			get {
				return self.append("parentCategoryIdsLike") 
			}
		}
		
		public var parentCategoryIdsMultiLikeOr: BaseTokenizedObject {
			get {
				return self.append("parentCategoryIdsMultiLikeOr") 
			}
		}
		
		public var parentCategoryIdsMultiLikeAnd: BaseTokenizedObject {
			get {
				return self.append("parentCategoryIdsMultiLikeAnd") 
			}
		}
	}

	public var parentCategoryIdsLike: String? = nil
	public var parentCategoryIdsMultiLikeOr: String? = nil
	public var parentCategoryIdsMultiLikeAnd: String? = nil


	public func setMultiRequestToken(parentCategoryIdsLike: String) {
		self.dict["parentCategoryIdsLike"] = parentCategoryIdsLike
	}
	
	public func setMultiRequestToken(parentCategoryIdsMultiLikeOr: String) {
		self.dict["parentCategoryIdsMultiLikeOr"] = parentCategoryIdsMultiLikeOr
	}
	
	public func setMultiRequestToken(parentCategoryIdsMultiLikeAnd: String) {
		self.dict["parentCategoryIdsMultiLikeAnd"] = parentCategoryIdsMultiLikeAnd
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["parentCategoryIdsLike"] != nil {
			parentCategoryIdsLike = dict["parentCategoryIdsLike"] as? String
		}
		if dict["parentCategoryIdsMultiLikeOr"] != nil {
			parentCategoryIdsMultiLikeOr = dict["parentCategoryIdsMultiLikeOr"] as? String
		}
		if dict["parentCategoryIdsMultiLikeAnd"] != nil {
			parentCategoryIdsMultiLikeAnd = dict["parentCategoryIdsMultiLikeAnd"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(parentCategoryIdsLike != nil) {
			dict["parentCategoryIdsLike"] = parentCategoryIdsLike!
		}
		if(parentCategoryIdsMultiLikeOr != nil) {
			dict["parentCategoryIdsMultiLikeOr"] = parentCategoryIdsMultiLikeOr!
		}
		if(parentCategoryIdsMultiLikeAnd != nil) {
			dict["parentCategoryIdsMultiLikeAnd"] = parentCategoryIdsMultiLikeAnd!
		}
		return dict
	}
}

