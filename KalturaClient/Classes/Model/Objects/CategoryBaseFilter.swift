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

open class CategoryBaseFilter: RelatedFilter {

	public var idEqual: Int? = nil
	public var idIn: String? = nil
	public var idNotIn: String? = nil
	public var parentIdEqual: Int? = nil
	public var parentIdIn: String? = nil
	public var depthEqual: Int? = nil
	public var fullNameEqual: String? = nil
	public var fullNameStartsWith: String? = nil
	public var fullNameIn: String? = nil
	public var fullIdsEqual: String? = nil
	public var fullIdsStartsWith: String? = nil
	public var fullIdsMatchOr: String? = nil
	public var createdAtGreaterThanOrEqual: Int? = nil
	public var createdAtLessThanOrEqual: Int? = nil
	public var updatedAtGreaterThanOrEqual: Int? = nil
	public var updatedAtLessThanOrEqual: Int? = nil
	public var tagsLike: String? = nil
	public var tagsMultiLikeOr: String? = nil
	public var tagsMultiLikeAnd: String? = nil
	public var appearInListEqual: AppearInListType? = nil
	public var privacyEqual: PrivacyType? = nil
	public var privacyIn: String? = nil
	public var inheritanceTypeEqual: InheritanceType? = nil
	public var inheritanceTypeIn: String? = nil
	public var referenceIdEqual: String? = nil
	public var referenceIdEmpty: Bool? = nil
	public var contributionPolicyEqual: ContributionPolicyType? = nil
	public var membersCountGreaterThanOrEqual: Int? = nil
	public var membersCountLessThanOrEqual: Int? = nil
	public var pendingMembersCountGreaterThanOrEqual: Int? = nil
	public var pendingMembersCountLessThanOrEqual: Int? = nil
	public var privacyContextEqual: String? = nil
	public var statusEqual: CategoryStatus? = nil
	public var statusIn: String? = nil
	public var inheritedParentIdEqual: Int? = nil
	public var inheritedParentIdIn: String? = nil
	public var partnerSortValueGreaterThanOrEqual: Int? = nil
	public var partnerSortValueLessThanOrEqual: Int? = nil
	public var aggregationCategoriesMultiLikeOr: String? = nil
	public var aggregationCategoriesMultiLikeAnd: String? = nil


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
		if dict["parentIdEqual"] != nil {
			parentIdEqual = dict["parentIdEqual"] as? Int
		}
		if dict["parentIdIn"] != nil {
			parentIdIn = dict["parentIdIn"] as? String
		}
		if dict["depthEqual"] != nil {
			depthEqual = dict["depthEqual"] as? Int
		}
		if dict["fullNameEqual"] != nil {
			fullNameEqual = dict["fullNameEqual"] as? String
		}
		if dict["fullNameStartsWith"] != nil {
			fullNameStartsWith = dict["fullNameStartsWith"] as? String
		}
		if dict["fullNameIn"] != nil {
			fullNameIn = dict["fullNameIn"] as? String
		}
		if dict["fullIdsEqual"] != nil {
			fullIdsEqual = dict["fullIdsEqual"] as? String
		}
		if dict["fullIdsStartsWith"] != nil {
			fullIdsStartsWith = dict["fullIdsStartsWith"] as? String
		}
		if dict["fullIdsMatchOr"] != nil {
			fullIdsMatchOr = dict["fullIdsMatchOr"] as? String
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
		if dict["tagsLike"] != nil {
			tagsLike = dict["tagsLike"] as? String
		}
		if dict["tagsMultiLikeOr"] != nil {
			tagsMultiLikeOr = dict["tagsMultiLikeOr"] as? String
		}
		if dict["tagsMultiLikeAnd"] != nil {
			tagsMultiLikeAnd = dict["tagsMultiLikeAnd"] as? String
		}
		if dict["appearInListEqual"] != nil {
			appearInListEqual = AppearInListType(rawValue: (dict["appearInListEqual"] as? Int)!)
		}
		if dict["privacyEqual"] != nil {
			privacyEqual = PrivacyType(rawValue: (dict["privacyEqual"] as? Int)!)
		}
		if dict["privacyIn"] != nil {
			privacyIn = dict["privacyIn"] as? String
		}
		if dict["inheritanceTypeEqual"] != nil {
			inheritanceTypeEqual = InheritanceType(rawValue: (dict["inheritanceTypeEqual"] as? Int)!)
		}
		if dict["inheritanceTypeIn"] != nil {
			inheritanceTypeIn = dict["inheritanceTypeIn"] as? String
		}
		if dict["referenceIdEqual"] != nil {
			referenceIdEqual = dict["referenceIdEqual"] as? String
		}
		if dict["referenceIdEmpty"] != nil {
			referenceIdEmpty = dict["referenceIdEmpty"] as? Bool
		}
		if dict["contributionPolicyEqual"] != nil {
			contributionPolicyEqual = ContributionPolicyType(rawValue: (dict["contributionPolicyEqual"] as? Int)!)
		}
		if dict["membersCountGreaterThanOrEqual"] != nil {
			membersCountGreaterThanOrEqual = dict["membersCountGreaterThanOrEqual"] as? Int
		}
		if dict["membersCountLessThanOrEqual"] != nil {
			membersCountLessThanOrEqual = dict["membersCountLessThanOrEqual"] as? Int
		}
		if dict["pendingMembersCountGreaterThanOrEqual"] != nil {
			pendingMembersCountGreaterThanOrEqual = dict["pendingMembersCountGreaterThanOrEqual"] as? Int
		}
		if dict["pendingMembersCountLessThanOrEqual"] != nil {
			pendingMembersCountLessThanOrEqual = dict["pendingMembersCountLessThanOrEqual"] as? Int
		}
		if dict["privacyContextEqual"] != nil {
			privacyContextEqual = dict["privacyContextEqual"] as? String
		}
		if dict["statusEqual"] != nil {
			statusEqual = CategoryStatus(rawValue: (dict["statusEqual"] as? Int)!)
		}
		if dict["statusIn"] != nil {
			statusIn = dict["statusIn"] as? String
		}
		if dict["inheritedParentIdEqual"] != nil {
			inheritedParentIdEqual = dict["inheritedParentIdEqual"] as? Int
		}
		if dict["inheritedParentIdIn"] != nil {
			inheritedParentIdIn = dict["inheritedParentIdIn"] as? String
		}
		if dict["partnerSortValueGreaterThanOrEqual"] != nil {
			partnerSortValueGreaterThanOrEqual = dict["partnerSortValueGreaterThanOrEqual"] as? Int
		}
		if dict["partnerSortValueLessThanOrEqual"] != nil {
			partnerSortValueLessThanOrEqual = dict["partnerSortValueLessThanOrEqual"] as? Int
		}
		if dict["aggregationCategoriesMultiLikeOr"] != nil {
			aggregationCategoriesMultiLikeOr = dict["aggregationCategoriesMultiLikeOr"] as? String
		}
		if dict["aggregationCategoriesMultiLikeAnd"] != nil {
			aggregationCategoriesMultiLikeAnd = dict["aggregationCategoriesMultiLikeAnd"] as? String
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
		if(parentIdEqual != nil) {
			dict["parentIdEqual"] = parentIdEqual!
		}
		if(parentIdIn != nil) {
			dict["parentIdIn"] = parentIdIn!
		}
		if(depthEqual != nil) {
			dict["depthEqual"] = depthEqual!
		}
		if(fullNameEqual != nil) {
			dict["fullNameEqual"] = fullNameEqual!
		}
		if(fullNameStartsWith != nil) {
			dict["fullNameStartsWith"] = fullNameStartsWith!
		}
		if(fullNameIn != nil) {
			dict["fullNameIn"] = fullNameIn!
		}
		if(fullIdsEqual != nil) {
			dict["fullIdsEqual"] = fullIdsEqual!
		}
		if(fullIdsStartsWith != nil) {
			dict["fullIdsStartsWith"] = fullIdsStartsWith!
		}
		if(fullIdsMatchOr != nil) {
			dict["fullIdsMatchOr"] = fullIdsMatchOr!
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
		if(tagsLike != nil) {
			dict["tagsLike"] = tagsLike!
		}
		if(tagsMultiLikeOr != nil) {
			dict["tagsMultiLikeOr"] = tagsMultiLikeOr!
		}
		if(tagsMultiLikeAnd != nil) {
			dict["tagsMultiLikeAnd"] = tagsMultiLikeAnd!
		}
		if(appearInListEqual != nil) {
			dict["appearInListEqual"] = appearInListEqual!.rawValue
		}
		if(privacyEqual != nil) {
			dict["privacyEqual"] = privacyEqual!.rawValue
		}
		if(privacyIn != nil) {
			dict["privacyIn"] = privacyIn!
		}
		if(inheritanceTypeEqual != nil) {
			dict["inheritanceTypeEqual"] = inheritanceTypeEqual!.rawValue
		}
		if(inheritanceTypeIn != nil) {
			dict["inheritanceTypeIn"] = inheritanceTypeIn!
		}
		if(referenceIdEqual != nil) {
			dict["referenceIdEqual"] = referenceIdEqual!
		}
		if(referenceIdEmpty != nil) {
			dict["referenceIdEmpty"] = referenceIdEmpty!
		}
		if(contributionPolicyEqual != nil) {
			dict["contributionPolicyEqual"] = contributionPolicyEqual!.rawValue
		}
		if(membersCountGreaterThanOrEqual != nil) {
			dict["membersCountGreaterThanOrEqual"] = membersCountGreaterThanOrEqual!
		}
		if(membersCountLessThanOrEqual != nil) {
			dict["membersCountLessThanOrEqual"] = membersCountLessThanOrEqual!
		}
		if(pendingMembersCountGreaterThanOrEqual != nil) {
			dict["pendingMembersCountGreaterThanOrEqual"] = pendingMembersCountGreaterThanOrEqual!
		}
		if(pendingMembersCountLessThanOrEqual != nil) {
			dict["pendingMembersCountLessThanOrEqual"] = pendingMembersCountLessThanOrEqual!
		}
		if(privacyContextEqual != nil) {
			dict["privacyContextEqual"] = privacyContextEqual!
		}
		if(statusEqual != nil) {
			dict["statusEqual"] = statusEqual!.rawValue
		}
		if(statusIn != nil) {
			dict["statusIn"] = statusIn!
		}
		if(inheritedParentIdEqual != nil) {
			dict["inheritedParentIdEqual"] = inheritedParentIdEqual!
		}
		if(inheritedParentIdIn != nil) {
			dict["inheritedParentIdIn"] = inheritedParentIdIn!
		}
		if(partnerSortValueGreaterThanOrEqual != nil) {
			dict["partnerSortValueGreaterThanOrEqual"] = partnerSortValueGreaterThanOrEqual!
		}
		if(partnerSortValueLessThanOrEqual != nil) {
			dict["partnerSortValueLessThanOrEqual"] = partnerSortValueLessThanOrEqual!
		}
		if(aggregationCategoriesMultiLikeOr != nil) {
			dict["aggregationCategoriesMultiLikeOr"] = aggregationCategoriesMultiLikeOr!
		}
		if(aggregationCategoriesMultiLikeAnd != nil) {
			dict["aggregationCategoriesMultiLikeAnd"] = aggregationCategoriesMultiLikeAnd!
		}
		return dict
	}
}

