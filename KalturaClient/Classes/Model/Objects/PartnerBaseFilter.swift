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

open class PartnerBaseFilter: Filter {

	public var idEqual: Int? = nil
	public var idIn: String? = nil
	public var idNotIn: String? = nil
	public var nameLike: String? = nil
	public var nameMultiLikeOr: String? = nil
	public var nameMultiLikeAnd: String? = nil
	public var nameEqual: String? = nil
	public var statusEqual: PartnerStatus? = nil
	public var statusIn: String? = nil
	public var partnerPackageEqual: Int? = nil
	public var partnerPackageGreaterThanOrEqual: Int? = nil
	public var partnerPackageLessThanOrEqual: Int? = nil
	public var partnerPackageIn: String? = nil
	public var partnerGroupTypeEqual: PartnerGroupType? = nil
	public var partnerNameDescriptionWebsiteAdminNameAdminEmailLike: String? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["idEqual"] != nil {
			idEqual = dict["idEqual"] as? Int
		}
		if dict["idIn"] != nil {
			idIn = dict["idIn"] as? String
		}
		if dict["idNotIn"] != nil {
			idNotIn = dict["idNotIn"] as? String
		}
		if dict["nameLike"] != nil {
			nameLike = dict["nameLike"] as? String
		}
		if dict["nameMultiLikeOr"] != nil {
			nameMultiLikeOr = dict["nameMultiLikeOr"] as? String
		}
		if dict["nameMultiLikeAnd"] != nil {
			nameMultiLikeAnd = dict["nameMultiLikeAnd"] as? String
		}
		if dict["nameEqual"] != nil {
			nameEqual = dict["nameEqual"] as? String
		}
		if dict["statusEqual"] != nil {
			statusEqual = PartnerStatus(rawValue: (dict["statusEqual"] as? Int)!)
		}
		if dict["statusIn"] != nil {
			statusIn = dict["statusIn"] as? String
		}
		if dict["partnerPackageEqual"] != nil {
			partnerPackageEqual = dict["partnerPackageEqual"] as? Int
		}
		if dict["partnerPackageGreaterThanOrEqual"] != nil {
			partnerPackageGreaterThanOrEqual = dict["partnerPackageGreaterThanOrEqual"] as? Int
		}
		if dict["partnerPackageLessThanOrEqual"] != nil {
			partnerPackageLessThanOrEqual = dict["partnerPackageLessThanOrEqual"] as? Int
		}
		if dict["partnerPackageIn"] != nil {
			partnerPackageIn = dict["partnerPackageIn"] as? String
		}
		if dict["partnerGroupTypeEqual"] != nil {
			partnerGroupTypeEqual = PartnerGroupType(rawValue: (dict["partnerGroupTypeEqual"] as? Int)!)
		}
		if dict["partnerNameDescriptionWebsiteAdminNameAdminEmailLike"] != nil {
			partnerNameDescriptionWebsiteAdminNameAdminEmailLike = dict["partnerNameDescriptionWebsiteAdminNameAdminEmailLike"] as? String
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
		if(idNotIn != nil) {
			dict["idNotIn"] = idNotIn!
		}
		if(nameLike != nil) {
			dict["nameLike"] = nameLike!
		}
		if(nameMultiLikeOr != nil) {
			dict["nameMultiLikeOr"] = nameMultiLikeOr!
		}
		if(nameMultiLikeAnd != nil) {
			dict["nameMultiLikeAnd"] = nameMultiLikeAnd!
		}
		if(nameEqual != nil) {
			dict["nameEqual"] = nameEqual!
		}
		if(statusEqual != nil) {
			dict["statusEqual"] = statusEqual!.rawValue
		}
		if(statusIn != nil) {
			dict["statusIn"] = statusIn!
		}
		if(partnerPackageEqual != nil) {
			dict["partnerPackageEqual"] = partnerPackageEqual!
		}
		if(partnerPackageGreaterThanOrEqual != nil) {
			dict["partnerPackageGreaterThanOrEqual"] = partnerPackageGreaterThanOrEqual!
		}
		if(partnerPackageLessThanOrEqual != nil) {
			dict["partnerPackageLessThanOrEqual"] = partnerPackageLessThanOrEqual!
		}
		if(partnerPackageIn != nil) {
			dict["partnerPackageIn"] = partnerPackageIn!
		}
		if(partnerGroupTypeEqual != nil) {
			dict["partnerGroupTypeEqual"] = partnerGroupTypeEqual!.rawValue
		}
		if(partnerNameDescriptionWebsiteAdminNameAdminEmailLike != nil) {
			dict["partnerNameDescriptionWebsiteAdminNameAdminEmailLike"] = partnerNameDescriptionWebsiteAdminNameAdminEmailLike!
		}
		return dict
	}
}

