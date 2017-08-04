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

open class UserBaseFilter: RelatedFilter {

	public var partnerIdEqual: Int? = nil
	public var typeEqual: UserType? = nil
	public var typeIn: String? = nil
	public var screenNameLike: String? = nil
	public var screenNameStartsWith: String? = nil
	public var emailLike: String? = nil
	public var emailStartsWith: String? = nil
	public var tagsMultiLikeOr: String? = nil
	public var tagsMultiLikeAnd: String? = nil
	public var statusEqual: UserStatus? = nil
	public var statusIn: String? = nil
	public var createdAtGreaterThanOrEqual: Int? = nil
	public var createdAtLessThanOrEqual: Int? = nil
	public var firstNameStartsWith: String? = nil
	public var lastNameStartsWith: String? = nil
	public var isAdminEqual: Bool? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["partnerIdEqual"] != nil {
			partnerIdEqual = dict["partnerIdEqual"] as? Int
		}
		if dict["typeEqual"] != nil {
			typeEqual = UserType(rawValue: (dict["typeEqual"] as? Int)!)
		}
		if dict["typeIn"] != nil {
			typeIn = dict["typeIn"] as? String
		}
		if dict["screenNameLike"] != nil {
			screenNameLike = dict["screenNameLike"] as? String
		}
		if dict["screenNameStartsWith"] != nil {
			screenNameStartsWith = dict["screenNameStartsWith"] as? String
		}
		if dict["emailLike"] != nil {
			emailLike = dict["emailLike"] as? String
		}
		if dict["emailStartsWith"] != nil {
			emailStartsWith = dict["emailStartsWith"] as? String
		}
		if dict["tagsMultiLikeOr"] != nil {
			tagsMultiLikeOr = dict["tagsMultiLikeOr"] as? String
		}
		if dict["tagsMultiLikeAnd"] != nil {
			tagsMultiLikeAnd = dict["tagsMultiLikeAnd"] as? String
		}
		if dict["statusEqual"] != nil {
			statusEqual = UserStatus(rawValue: (dict["statusEqual"] as? Int)!)
		}
		if dict["statusIn"] != nil {
			statusIn = dict["statusIn"] as? String
		}
		if dict["createdAtGreaterThanOrEqual"] != nil {
			createdAtGreaterThanOrEqual = dict["createdAtGreaterThanOrEqual"] as? Int
		}
		if dict["createdAtLessThanOrEqual"] != nil {
			createdAtLessThanOrEqual = dict["createdAtLessThanOrEqual"] as? Int
		}
		if dict["firstNameStartsWith"] != nil {
			firstNameStartsWith = dict["firstNameStartsWith"] as? String
		}
		if dict["lastNameStartsWith"] != nil {
			lastNameStartsWith = dict["lastNameStartsWith"] as? String
		}
		if dict["isAdminEqual"] != nil {
			isAdminEqual = dict["isAdminEqual"] as? Bool
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(partnerIdEqual != nil) {
			dict["partnerIdEqual"] = partnerIdEqual!
		}
		if(typeEqual != nil) {
			dict["typeEqual"] = typeEqual!.rawValue
		}
		if(typeIn != nil) {
			dict["typeIn"] = typeIn!
		}
		if(screenNameLike != nil) {
			dict["screenNameLike"] = screenNameLike!
		}
		if(screenNameStartsWith != nil) {
			dict["screenNameStartsWith"] = screenNameStartsWith!
		}
		if(emailLike != nil) {
			dict["emailLike"] = emailLike!
		}
		if(emailStartsWith != nil) {
			dict["emailStartsWith"] = emailStartsWith!
		}
		if(tagsMultiLikeOr != nil) {
			dict["tagsMultiLikeOr"] = tagsMultiLikeOr!
		}
		if(tagsMultiLikeAnd != nil) {
			dict["tagsMultiLikeAnd"] = tagsMultiLikeAnd!
		}
		if(statusEqual != nil) {
			dict["statusEqual"] = statusEqual!.rawValue
		}
		if(statusIn != nil) {
			dict["statusIn"] = statusIn!
		}
		if(createdAtGreaterThanOrEqual != nil) {
			dict["createdAtGreaterThanOrEqual"] = createdAtGreaterThanOrEqual!
		}
		if(createdAtLessThanOrEqual != nil) {
			dict["createdAtLessThanOrEqual"] = createdAtLessThanOrEqual!
		}
		if(firstNameStartsWith != nil) {
			dict["firstNameStartsWith"] = firstNameStartsWith!
		}
		if(lastNameStartsWith != nil) {
			dict["lastNameStartsWith"] = lastNameStartsWith!
		}
		if(isAdminEqual != nil) {
			dict["isAdminEqual"] = isAdminEqual!
		}
		return dict
	}
}

