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

open class UiConfBaseFilter: Filter {

	public var idEqual: Int? = nil
	public var idIn: String? = nil
	public var nameLike: String? = nil
	public var partnerIdEqual: Int? = nil
	public var partnerIdIn: String? = nil
	public var objTypeEqual: UiConfObjType? = nil
	public var objTypeIn: String? = nil
	public var tagsMultiLikeOr: String? = nil
	public var tagsMultiLikeAnd: String? = nil
	public var createdAtGreaterThanOrEqual: Int? = nil
	public var createdAtLessThanOrEqual: Int? = nil
	public var updatedAtGreaterThanOrEqual: Int? = nil
	public var updatedAtLessThanOrEqual: Int? = nil
	public var creationModeEqual: UiConfCreationMode? = nil
	public var creationModeIn: String? = nil
	public var versionEqual: String? = nil
	public var versionMultiLikeOr: String? = nil
	public var versionMultiLikeAnd: String? = nil
	public var partnerTagsMultiLikeOr: String? = nil
	public var partnerTagsMultiLikeAnd: String? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["idEqual"] != nil {
			idEqual = dict["idEqual"] as? Int
		}
		if dict["idIn"] != nil {
			idIn = dict["idIn"] as? String
		}
		if dict["nameLike"] != nil {
			nameLike = dict["nameLike"] as? String
		}
		if dict["partnerIdEqual"] != nil {
			partnerIdEqual = dict["partnerIdEqual"] as? Int
		}
		if dict["partnerIdIn"] != nil {
			partnerIdIn = dict["partnerIdIn"] as? String
		}
		if dict["objTypeEqual"] != nil {
			objTypeEqual = UiConfObjType(rawValue: (dict["objTypeEqual"] as? Int)!)
		}
		if dict["objTypeIn"] != nil {
			objTypeIn = dict["objTypeIn"] as? String
		}
		if dict["tagsMultiLikeOr"] != nil {
			tagsMultiLikeOr = dict["tagsMultiLikeOr"] as? String
		}
		if dict["tagsMultiLikeAnd"] != nil {
			tagsMultiLikeAnd = dict["tagsMultiLikeAnd"] as? String
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
		if dict["creationModeEqual"] != nil {
			creationModeEqual = UiConfCreationMode(rawValue: (dict["creationModeEqual"] as? Int)!)
		}
		if dict["creationModeIn"] != nil {
			creationModeIn = dict["creationModeIn"] as? String
		}
		if dict["versionEqual"] != nil {
			versionEqual = dict["versionEqual"] as? String
		}
		if dict["versionMultiLikeOr"] != nil {
			versionMultiLikeOr = dict["versionMultiLikeOr"] as? String
		}
		if dict["versionMultiLikeAnd"] != nil {
			versionMultiLikeAnd = dict["versionMultiLikeAnd"] as? String
		}
		if dict["partnerTagsMultiLikeOr"] != nil {
			partnerTagsMultiLikeOr = dict["partnerTagsMultiLikeOr"] as? String
		}
		if dict["partnerTagsMultiLikeAnd"] != nil {
			partnerTagsMultiLikeAnd = dict["partnerTagsMultiLikeAnd"] as? String
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
		if(nameLike != nil) {
			dict["nameLike"] = nameLike!
		}
		if(partnerIdEqual != nil) {
			dict["partnerIdEqual"] = partnerIdEqual!
		}
		if(partnerIdIn != nil) {
			dict["partnerIdIn"] = partnerIdIn!
		}
		if(objTypeEqual != nil) {
			dict["objTypeEqual"] = objTypeEqual!.rawValue
		}
		if(objTypeIn != nil) {
			dict["objTypeIn"] = objTypeIn!
		}
		if(tagsMultiLikeOr != nil) {
			dict["tagsMultiLikeOr"] = tagsMultiLikeOr!
		}
		if(tagsMultiLikeAnd != nil) {
			dict["tagsMultiLikeAnd"] = tagsMultiLikeAnd!
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
		if(creationModeEqual != nil) {
			dict["creationModeEqual"] = creationModeEqual!.rawValue
		}
		if(creationModeIn != nil) {
			dict["creationModeIn"] = creationModeIn!
		}
		if(versionEqual != nil) {
			dict["versionEqual"] = versionEqual!
		}
		if(versionMultiLikeOr != nil) {
			dict["versionMultiLikeOr"] = versionMultiLikeOr!
		}
		if(versionMultiLikeAnd != nil) {
			dict["versionMultiLikeAnd"] = versionMultiLikeAnd!
		}
		if(partnerTagsMultiLikeOr != nil) {
			dict["partnerTagsMultiLikeOr"] = partnerTagsMultiLikeOr!
		}
		if(partnerTagsMultiLikeAnd != nil) {
			dict["partnerTagsMultiLikeAnd"] = partnerTagsMultiLikeAnd!
		}
		return dict
	}
}

