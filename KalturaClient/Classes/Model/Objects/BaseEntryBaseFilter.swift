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

open class BaseEntryBaseFilter: RelatedFilter {

	/**  This filter should be in use for retrieving only a specific entry (identified by
	  its entryId).  */
	public var idEqual: String? = nil
	/**  This filter should be in use for retrieving few specific entries (string should
	  include comma separated list of entryId strings).  */
	public var idIn: String? = nil
	public var idNotIn: String? = nil
	/**  This filter should be in use for retrieving specific entries. It should include
	  only one string to search for in entry names (no wildcards, spaces are treated
	  as part of the string).  */
	public var nameLike: String? = nil
	/**  This filter should be in use for retrieving specific entries. It could include
	  few (comma separated) strings for searching in entry names, while applying an OR
	  logic to retrieve entries that contain at least one input string (no wildcards,
	  spaces are treated as part of the string).  */
	public var nameMultiLikeOr: String? = nil
	/**  This filter should be in use for retrieving specific entries. It could include
	  few (comma separated) strings for searching in entry names, while applying an
	  AND logic to retrieve entries that contain all input strings (no wildcards,
	  spaces are treated as part of the string).  */
	public var nameMultiLikeAnd: String? = nil
	/**  This filter should be in use for retrieving entries with a specific name.  */
	public var nameEqual: String? = nil
	/**  This filter should be in use for retrieving only entries which were uploaded
	  by/assigned to users of a specific Kaltura Partner (identified by Partner ID).  */
	public var partnerIdEqual: Int? = nil
	/**  This filter should be in use for retrieving only entries within Kaltura network
	  which were uploaded by/assigned to users of few Kaltura Partners  (string should
	  include comma separated list of PartnerIDs)  */
	public var partnerIdIn: String? = nil
	/**  This filter parameter should be in use for retrieving only entries, uploaded
	  by/assigned to a specific user (identified by user Id).  */
	public var userIdEqual: String? = nil
	public var userIdIn: String? = nil
	public var userIdNotIn: String? = nil
	public var creatorIdEqual: String? = nil
	/**  This filter should be in use for retrieving specific entries. It should include
	  only one string to search for in entry tags (no wildcards, spaces are treated as
	  part of the string).  */
	public var tagsLike: String? = nil
	/**  This filter should be in use for retrieving specific entries. It could include
	  few (comma separated) strings for searching in entry tags, while applying an OR
	  logic to retrieve entries that contain at least one input string (no wildcards,
	  spaces are treated as part of the string).  */
	public var tagsMultiLikeOr: String? = nil
	/**  This filter should be in use for retrieving specific entries. It could include
	  few (comma separated) strings for searching in entry tags, while applying an AND
	  logic to retrieve entries that contain all input strings (no wildcards, spaces
	  are treated as part of the string).  */
	public var tagsMultiLikeAnd: String? = nil
	/**  This filter should be in use for retrieving specific entries. It should include
	  only one string to search for in entry tags set by an ADMIN user (no wildcards,
	  spaces are treated as part of the string).  */
	public var adminTagsLike: String? = nil
	/**  This filter should be in use for retrieving specific entries. It could include
	  few (comma separated) strings for searching in entry tags, set by an ADMIN user,
	  while applying an OR logic to retrieve entries that contain at least one input
	  string (no wildcards, spaces are treated as part of the string).  */
	public var adminTagsMultiLikeOr: String? = nil
	/**  This filter should be in use for retrieving specific entries. It could include
	  few (comma separated) strings for searching in entry tags, set by an ADMIN user,
	  while applying an AND logic to retrieve entries that contain all input strings
	  (no wildcards, spaces are treated as part of the string).  */
	public var adminTagsMultiLikeAnd: String? = nil
	public var categoriesMatchAnd: String? = nil
	/**  All entries within these categories or their child categories.  */
	public var categoriesMatchOr: String? = nil
	public var categoriesNotContains: String? = nil
	public var categoriesIdsMatchAnd: String? = nil
	/**  All entries of the categories, excluding their child categories.   To include
	  entries of the child categories, use categoryAncestorIdIn, or categoriesMatchOr.  */
	public var categoriesIdsMatchOr: String? = nil
	public var categoriesIdsNotContains: String? = nil
	public var categoriesIdsEmpty: Bool? = nil
	/**  This filter should be in use for retrieving only entries, at a specific {  */
	public var statusEqual: EntryStatus? = nil
	/**  This filter should be in use for retrieving only entries, not at a specific {  */
	public var statusNotEqual: EntryStatus? = nil
	/**  This filter should be in use for retrieving only entries, at few specific {  */
	public var statusIn: String? = nil
	/**  This filter should be in use for retrieving only entries, not at few specific {  */
	public var statusNotIn: String? = nil
	public var moderationStatusEqual: EntryModerationStatus? = nil
	public var moderationStatusNotEqual: EntryModerationStatus? = nil
	public var moderationStatusIn: String? = nil
	public var moderationStatusNotIn: String? = nil
	public var typeEqual: EntryType? = nil
	/**  This filter should be in use for retrieving entries of few {  */
	public var typeIn: String? = nil
	/**  This filter parameter should be in use for retrieving only entries which were
	  created at Kaltura system after a specific time/date (standard timestamp
	  format).  */
	public var createdAtGreaterThanOrEqual: Int? = nil
	/**  This filter parameter should be in use for retrieving only entries which were
	  created at Kaltura system before a specific time/date (standard timestamp
	  format).  */
	public var createdAtLessThanOrEqual: Int? = nil
	public var updatedAtGreaterThanOrEqual: Int? = nil
	public var updatedAtLessThanOrEqual: Int? = nil
	public var totalRankLessThanOrEqual: Int? = nil
	public var totalRankGreaterThanOrEqual: Int? = nil
	public var groupIdEqual: Int? = nil
	/**  This filter should be in use for retrieving specific entries while search match
	  the input string within all of the following metadata attributes: name,
	  description, tags, adminTags.  */
	public var searchTextMatchAnd: String? = nil
	/**  This filter should be in use for retrieving specific entries while search match
	  the input string within at least one of the following metadata attributes: name,
	  description, tags, adminTags.  */
	public var searchTextMatchOr: String? = nil
	public var accessControlIdEqual: Int? = nil
	public var accessControlIdIn: String? = nil
	public var startDateGreaterThanOrEqual: Int? = nil
	public var startDateLessThanOrEqual: Int? = nil
	public var startDateGreaterThanOrEqualOrNull: Int? = nil
	public var startDateLessThanOrEqualOrNull: Int? = nil
	public var endDateGreaterThanOrEqual: Int? = nil
	public var endDateLessThanOrEqual: Int? = nil
	public var endDateGreaterThanOrEqualOrNull: Int? = nil
	public var endDateLessThanOrEqualOrNull: Int? = nil
	public var referenceIdEqual: String? = nil
	public var referenceIdIn: String? = nil
	public var replacingEntryIdEqual: String? = nil
	public var replacingEntryIdIn: String? = nil
	public var replacedEntryIdEqual: String? = nil
	public var replacedEntryIdIn: String? = nil
	public var replacementStatusEqual: EntryReplacementStatus? = nil
	public var replacementStatusIn: String? = nil
	public var partnerSortValueGreaterThanOrEqual: Int? = nil
	public var partnerSortValueLessThanOrEqual: Int? = nil
	public var rootEntryIdEqual: String? = nil
	public var rootEntryIdIn: String? = nil
	public var parentEntryIdEqual: String? = nil
	public var entitledUsersEditMatchAnd: String? = nil
	public var entitledUsersEditMatchOr: String? = nil
	public var entitledUsersPublishMatchAnd: String? = nil
	public var entitledUsersPublishMatchOr: String? = nil
	public var tagsNameMultiLikeOr: String? = nil
	public var tagsAdminTagsMultiLikeOr: String? = nil
	public var tagsAdminTagsNameMultiLikeOr: String? = nil
	public var tagsNameMultiLikeAnd: String? = nil
	public var tagsAdminTagsMultiLikeAnd: String? = nil
	public var tagsAdminTagsNameMultiLikeAnd: String? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["idEqual"] != nil {
			idEqual = dict["idEqual"] as? String
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
		if dict["partnerIdEqual"] != nil {
			partnerIdEqual = dict["partnerIdEqual"] as? Int
		}
		if dict["partnerIdIn"] != nil {
			partnerIdIn = dict["partnerIdIn"] as? String
		}
		if dict["userIdEqual"] != nil {
			userIdEqual = dict["userIdEqual"] as? String
		}
		if dict["userIdIn"] != nil {
			userIdIn = dict["userIdIn"] as? String
		}
		if dict["userIdNotIn"] != nil {
			userIdNotIn = dict["userIdNotIn"] as? String
		}
		if dict["creatorIdEqual"] != nil {
			creatorIdEqual = dict["creatorIdEqual"] as? String
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
		if dict["adminTagsLike"] != nil {
			adminTagsLike = dict["adminTagsLike"] as? String
		}
		if dict["adminTagsMultiLikeOr"] != nil {
			adminTagsMultiLikeOr = dict["adminTagsMultiLikeOr"] as? String
		}
		if dict["adminTagsMultiLikeAnd"] != nil {
			adminTagsMultiLikeAnd = dict["adminTagsMultiLikeAnd"] as? String
		}
		if dict["categoriesMatchAnd"] != nil {
			categoriesMatchAnd = dict["categoriesMatchAnd"] as? String
		}
		if dict["categoriesMatchOr"] != nil {
			categoriesMatchOr = dict["categoriesMatchOr"] as? String
		}
		if dict["categoriesNotContains"] != nil {
			categoriesNotContains = dict["categoriesNotContains"] as? String
		}
		if dict["categoriesIdsMatchAnd"] != nil {
			categoriesIdsMatchAnd = dict["categoriesIdsMatchAnd"] as? String
		}
		if dict["categoriesIdsMatchOr"] != nil {
			categoriesIdsMatchOr = dict["categoriesIdsMatchOr"] as? String
		}
		if dict["categoriesIdsNotContains"] != nil {
			categoriesIdsNotContains = dict["categoriesIdsNotContains"] as? String
		}
		if dict["categoriesIdsEmpty"] != nil {
			categoriesIdsEmpty = dict["categoriesIdsEmpty"] as? Bool
		}
		if dict["statusEqual"] != nil {
			statusEqual = EntryStatus(rawValue: "\(dict["statusEqual"]!)")
		}
		if dict["statusNotEqual"] != nil {
			statusNotEqual = EntryStatus(rawValue: "\(dict["statusNotEqual"]!)")
		}
		if dict["statusIn"] != nil {
			statusIn = dict["statusIn"] as? String
		}
		if dict["statusNotIn"] != nil {
			statusNotIn = dict["statusNotIn"] as? String
		}
		if dict["moderationStatusEqual"] != nil {
			moderationStatusEqual = EntryModerationStatus(rawValue: (dict["moderationStatusEqual"] as? Int)!)
		}
		if dict["moderationStatusNotEqual"] != nil {
			moderationStatusNotEqual = EntryModerationStatus(rawValue: (dict["moderationStatusNotEqual"] as? Int)!)
		}
		if dict["moderationStatusIn"] != nil {
			moderationStatusIn = dict["moderationStatusIn"] as? String
		}
		if dict["moderationStatusNotIn"] != nil {
			moderationStatusNotIn = dict["moderationStatusNotIn"] as? String
		}
		if dict["typeEqual"] != nil {
			typeEqual = EntryType(rawValue: "\(dict["typeEqual"]!)")
		}
		if dict["typeIn"] != nil {
			typeIn = dict["typeIn"] as? String
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
		if dict["totalRankLessThanOrEqual"] != nil {
			totalRankLessThanOrEqual = dict["totalRankLessThanOrEqual"] as? Int
		}
		if dict["totalRankGreaterThanOrEqual"] != nil {
			totalRankGreaterThanOrEqual = dict["totalRankGreaterThanOrEqual"] as? Int
		}
		if dict["groupIdEqual"] != nil {
			groupIdEqual = dict["groupIdEqual"] as? Int
		}
		if dict["searchTextMatchAnd"] != nil {
			searchTextMatchAnd = dict["searchTextMatchAnd"] as? String
		}
		if dict["searchTextMatchOr"] != nil {
			searchTextMatchOr = dict["searchTextMatchOr"] as? String
		}
		if dict["accessControlIdEqual"] != nil {
			accessControlIdEqual = dict["accessControlIdEqual"] as? Int
		}
		if dict["accessControlIdIn"] != nil {
			accessControlIdIn = dict["accessControlIdIn"] as? String
		}
		if dict["startDateGreaterThanOrEqual"] != nil {
			startDateGreaterThanOrEqual = dict["startDateGreaterThanOrEqual"] as? Int
		}
		if dict["startDateLessThanOrEqual"] != nil {
			startDateLessThanOrEqual = dict["startDateLessThanOrEqual"] as? Int
		}
		if dict["startDateGreaterThanOrEqualOrNull"] != nil {
			startDateGreaterThanOrEqualOrNull = dict["startDateGreaterThanOrEqualOrNull"] as? Int
		}
		if dict["startDateLessThanOrEqualOrNull"] != nil {
			startDateLessThanOrEqualOrNull = dict["startDateLessThanOrEqualOrNull"] as? Int
		}
		if dict["endDateGreaterThanOrEqual"] != nil {
			endDateGreaterThanOrEqual = dict["endDateGreaterThanOrEqual"] as? Int
		}
		if dict["endDateLessThanOrEqual"] != nil {
			endDateLessThanOrEqual = dict["endDateLessThanOrEqual"] as? Int
		}
		if dict["endDateGreaterThanOrEqualOrNull"] != nil {
			endDateGreaterThanOrEqualOrNull = dict["endDateGreaterThanOrEqualOrNull"] as? Int
		}
		if dict["endDateLessThanOrEqualOrNull"] != nil {
			endDateLessThanOrEqualOrNull = dict["endDateLessThanOrEqualOrNull"] as? Int
		}
		if dict["referenceIdEqual"] != nil {
			referenceIdEqual = dict["referenceIdEqual"] as? String
		}
		if dict["referenceIdIn"] != nil {
			referenceIdIn = dict["referenceIdIn"] as? String
		}
		if dict["replacingEntryIdEqual"] != nil {
			replacingEntryIdEqual = dict["replacingEntryIdEqual"] as? String
		}
		if dict["replacingEntryIdIn"] != nil {
			replacingEntryIdIn = dict["replacingEntryIdIn"] as? String
		}
		if dict["replacedEntryIdEqual"] != nil {
			replacedEntryIdEqual = dict["replacedEntryIdEqual"] as? String
		}
		if dict["replacedEntryIdIn"] != nil {
			replacedEntryIdIn = dict["replacedEntryIdIn"] as? String
		}
		if dict["replacementStatusEqual"] != nil {
			replacementStatusEqual = EntryReplacementStatus(rawValue: "\(dict["replacementStatusEqual"]!)")
		}
		if dict["replacementStatusIn"] != nil {
			replacementStatusIn = dict["replacementStatusIn"] as? String
		}
		if dict["partnerSortValueGreaterThanOrEqual"] != nil {
			partnerSortValueGreaterThanOrEqual = dict["partnerSortValueGreaterThanOrEqual"] as? Int
		}
		if dict["partnerSortValueLessThanOrEqual"] != nil {
			partnerSortValueLessThanOrEqual = dict["partnerSortValueLessThanOrEqual"] as? Int
		}
		if dict["rootEntryIdEqual"] != nil {
			rootEntryIdEqual = dict["rootEntryIdEqual"] as? String
		}
		if dict["rootEntryIdIn"] != nil {
			rootEntryIdIn = dict["rootEntryIdIn"] as? String
		}
		if dict["parentEntryIdEqual"] != nil {
			parentEntryIdEqual = dict["parentEntryIdEqual"] as? String
		}
		if dict["entitledUsersEditMatchAnd"] != nil {
			entitledUsersEditMatchAnd = dict["entitledUsersEditMatchAnd"] as? String
		}
		if dict["entitledUsersEditMatchOr"] != nil {
			entitledUsersEditMatchOr = dict["entitledUsersEditMatchOr"] as? String
		}
		if dict["entitledUsersPublishMatchAnd"] != nil {
			entitledUsersPublishMatchAnd = dict["entitledUsersPublishMatchAnd"] as? String
		}
		if dict["entitledUsersPublishMatchOr"] != nil {
			entitledUsersPublishMatchOr = dict["entitledUsersPublishMatchOr"] as? String
		}
		if dict["tagsNameMultiLikeOr"] != nil {
			tagsNameMultiLikeOr = dict["tagsNameMultiLikeOr"] as? String
		}
		if dict["tagsAdminTagsMultiLikeOr"] != nil {
			tagsAdminTagsMultiLikeOr = dict["tagsAdminTagsMultiLikeOr"] as? String
		}
		if dict["tagsAdminTagsNameMultiLikeOr"] != nil {
			tagsAdminTagsNameMultiLikeOr = dict["tagsAdminTagsNameMultiLikeOr"] as? String
		}
		if dict["tagsNameMultiLikeAnd"] != nil {
			tagsNameMultiLikeAnd = dict["tagsNameMultiLikeAnd"] as? String
		}
		if dict["tagsAdminTagsMultiLikeAnd"] != nil {
			tagsAdminTagsMultiLikeAnd = dict["tagsAdminTagsMultiLikeAnd"] as? String
		}
		if dict["tagsAdminTagsNameMultiLikeAnd"] != nil {
			tagsAdminTagsNameMultiLikeAnd = dict["tagsAdminTagsNameMultiLikeAnd"] as? String
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
		if(partnerIdEqual != nil) {
			dict["partnerIdEqual"] = partnerIdEqual!
		}
		if(partnerIdIn != nil) {
			dict["partnerIdIn"] = partnerIdIn!
		}
		if(userIdEqual != nil) {
			dict["userIdEqual"] = userIdEqual!
		}
		if(userIdIn != nil) {
			dict["userIdIn"] = userIdIn!
		}
		if(userIdNotIn != nil) {
			dict["userIdNotIn"] = userIdNotIn!
		}
		if(creatorIdEqual != nil) {
			dict["creatorIdEqual"] = creatorIdEqual!
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
		if(adminTagsLike != nil) {
			dict["adminTagsLike"] = adminTagsLike!
		}
		if(adminTagsMultiLikeOr != nil) {
			dict["adminTagsMultiLikeOr"] = adminTagsMultiLikeOr!
		}
		if(adminTagsMultiLikeAnd != nil) {
			dict["adminTagsMultiLikeAnd"] = adminTagsMultiLikeAnd!
		}
		if(categoriesMatchAnd != nil) {
			dict["categoriesMatchAnd"] = categoriesMatchAnd!
		}
		if(categoriesMatchOr != nil) {
			dict["categoriesMatchOr"] = categoriesMatchOr!
		}
		if(categoriesNotContains != nil) {
			dict["categoriesNotContains"] = categoriesNotContains!
		}
		if(categoriesIdsMatchAnd != nil) {
			dict["categoriesIdsMatchAnd"] = categoriesIdsMatchAnd!
		}
		if(categoriesIdsMatchOr != nil) {
			dict["categoriesIdsMatchOr"] = categoriesIdsMatchOr!
		}
		if(categoriesIdsNotContains != nil) {
			dict["categoriesIdsNotContains"] = categoriesIdsNotContains!
		}
		if(categoriesIdsEmpty != nil) {
			dict["categoriesIdsEmpty"] = categoriesIdsEmpty!
		}
		if(statusEqual != nil) {
			dict["statusEqual"] = statusEqual!.rawValue
		}
		if(statusNotEqual != nil) {
			dict["statusNotEqual"] = statusNotEqual!.rawValue
		}
		if(statusIn != nil) {
			dict["statusIn"] = statusIn!
		}
		if(statusNotIn != nil) {
			dict["statusNotIn"] = statusNotIn!
		}
		if(moderationStatusEqual != nil) {
			dict["moderationStatusEqual"] = moderationStatusEqual!.rawValue
		}
		if(moderationStatusNotEqual != nil) {
			dict["moderationStatusNotEqual"] = moderationStatusNotEqual!.rawValue
		}
		if(moderationStatusIn != nil) {
			dict["moderationStatusIn"] = moderationStatusIn!
		}
		if(moderationStatusNotIn != nil) {
			dict["moderationStatusNotIn"] = moderationStatusNotIn!
		}
		if(typeEqual != nil) {
			dict["typeEqual"] = typeEqual!.rawValue
		}
		if(typeIn != nil) {
			dict["typeIn"] = typeIn!
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
		if(totalRankLessThanOrEqual != nil) {
			dict["totalRankLessThanOrEqual"] = totalRankLessThanOrEqual!
		}
		if(totalRankGreaterThanOrEqual != nil) {
			dict["totalRankGreaterThanOrEqual"] = totalRankGreaterThanOrEqual!
		}
		if(groupIdEqual != nil) {
			dict["groupIdEqual"] = groupIdEqual!
		}
		if(searchTextMatchAnd != nil) {
			dict["searchTextMatchAnd"] = searchTextMatchAnd!
		}
		if(searchTextMatchOr != nil) {
			dict["searchTextMatchOr"] = searchTextMatchOr!
		}
		if(accessControlIdEqual != nil) {
			dict["accessControlIdEqual"] = accessControlIdEqual!
		}
		if(accessControlIdIn != nil) {
			dict["accessControlIdIn"] = accessControlIdIn!
		}
		if(startDateGreaterThanOrEqual != nil) {
			dict["startDateGreaterThanOrEqual"] = startDateGreaterThanOrEqual!
		}
		if(startDateLessThanOrEqual != nil) {
			dict["startDateLessThanOrEqual"] = startDateLessThanOrEqual!
		}
		if(startDateGreaterThanOrEqualOrNull != nil) {
			dict["startDateGreaterThanOrEqualOrNull"] = startDateGreaterThanOrEqualOrNull!
		}
		if(startDateLessThanOrEqualOrNull != nil) {
			dict["startDateLessThanOrEqualOrNull"] = startDateLessThanOrEqualOrNull!
		}
		if(endDateGreaterThanOrEqual != nil) {
			dict["endDateGreaterThanOrEqual"] = endDateGreaterThanOrEqual!
		}
		if(endDateLessThanOrEqual != nil) {
			dict["endDateLessThanOrEqual"] = endDateLessThanOrEqual!
		}
		if(endDateGreaterThanOrEqualOrNull != nil) {
			dict["endDateGreaterThanOrEqualOrNull"] = endDateGreaterThanOrEqualOrNull!
		}
		if(endDateLessThanOrEqualOrNull != nil) {
			dict["endDateLessThanOrEqualOrNull"] = endDateLessThanOrEqualOrNull!
		}
		if(referenceIdEqual != nil) {
			dict["referenceIdEqual"] = referenceIdEqual!
		}
		if(referenceIdIn != nil) {
			dict["referenceIdIn"] = referenceIdIn!
		}
		if(replacingEntryIdEqual != nil) {
			dict["replacingEntryIdEqual"] = replacingEntryIdEqual!
		}
		if(replacingEntryIdIn != nil) {
			dict["replacingEntryIdIn"] = replacingEntryIdIn!
		}
		if(replacedEntryIdEqual != nil) {
			dict["replacedEntryIdEqual"] = replacedEntryIdEqual!
		}
		if(replacedEntryIdIn != nil) {
			dict["replacedEntryIdIn"] = replacedEntryIdIn!
		}
		if(replacementStatusEqual != nil) {
			dict["replacementStatusEqual"] = replacementStatusEqual!.rawValue
		}
		if(replacementStatusIn != nil) {
			dict["replacementStatusIn"] = replacementStatusIn!
		}
		if(partnerSortValueGreaterThanOrEqual != nil) {
			dict["partnerSortValueGreaterThanOrEqual"] = partnerSortValueGreaterThanOrEqual!
		}
		if(partnerSortValueLessThanOrEqual != nil) {
			dict["partnerSortValueLessThanOrEqual"] = partnerSortValueLessThanOrEqual!
		}
		if(rootEntryIdEqual != nil) {
			dict["rootEntryIdEqual"] = rootEntryIdEqual!
		}
		if(rootEntryIdIn != nil) {
			dict["rootEntryIdIn"] = rootEntryIdIn!
		}
		if(parentEntryIdEqual != nil) {
			dict["parentEntryIdEqual"] = parentEntryIdEqual!
		}
		if(entitledUsersEditMatchAnd != nil) {
			dict["entitledUsersEditMatchAnd"] = entitledUsersEditMatchAnd!
		}
		if(entitledUsersEditMatchOr != nil) {
			dict["entitledUsersEditMatchOr"] = entitledUsersEditMatchOr!
		}
		if(entitledUsersPublishMatchAnd != nil) {
			dict["entitledUsersPublishMatchAnd"] = entitledUsersPublishMatchAnd!
		}
		if(entitledUsersPublishMatchOr != nil) {
			dict["entitledUsersPublishMatchOr"] = entitledUsersPublishMatchOr!
		}
		if(tagsNameMultiLikeOr != nil) {
			dict["tagsNameMultiLikeOr"] = tagsNameMultiLikeOr!
		}
		if(tagsAdminTagsMultiLikeOr != nil) {
			dict["tagsAdminTagsMultiLikeOr"] = tagsAdminTagsMultiLikeOr!
		}
		if(tagsAdminTagsNameMultiLikeOr != nil) {
			dict["tagsAdminTagsNameMultiLikeOr"] = tagsAdminTagsNameMultiLikeOr!
		}
		if(tagsNameMultiLikeAnd != nil) {
			dict["tagsNameMultiLikeAnd"] = tagsNameMultiLikeAnd!
		}
		if(tagsAdminTagsMultiLikeAnd != nil) {
			dict["tagsAdminTagsMultiLikeAnd"] = tagsAdminTagsMultiLikeAnd!
		}
		if(tagsAdminTagsNameMultiLikeAnd != nil) {
			dict["tagsAdminTagsNameMultiLikeAnd"] = tagsAdminTagsNameMultiLikeAnd!
		}
		return dict
	}
}

