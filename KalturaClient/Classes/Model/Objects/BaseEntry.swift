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

open class BaseEntry: ObjectBase {

	/**  Auto generated 10 characters alphanumeric string  */
	public var id: String? = nil
	/**  Entry name (Min 1 chars)  */
	public var name: String? = nil
	/**  Entry description  */
	public var description: String? = nil
	public var partnerId: Int? = nil
	/**  The ID of the user who is the owner of this entry  */
	public var userId: String? = nil
	/**  The ID of the user who created this entry  */
	public var creatorId: String? = nil
	/**  Entry tags  */
	public var tags: String? = nil
	/**  Entry admin tags can be updated only by administrators  */
	public var adminTags: String? = nil
	/**  Comma separated list of full names of categories to which this entry belongs.
	  Only categories that don't have entitlement (privacy context) are listed, to
	  retrieve the full list of categories, use the categoryEntry.list action.  */
	public var categories: String? = nil
	/**  Comma separated list of ids of categories to which this entry belongs. Only
	  categories that don't have entitlement (privacy context) are listed, to retrieve
	  the full list of categories, use the categoryEntry.list action.  */
	public var categoriesIds: String? = nil
	public var status: EntryStatus? = nil
	/**  Entry moderation status  */
	public var moderationStatus: EntryModerationStatus? = nil
	/**  Number of moderation requests waiting for this entry  */
	public var moderationCount: Int? = nil
	/**  The type of the entry, this is auto filled by the derived entry object  */
	public var type: EntryType? = nil
	/**  Entry creation date as Unix timestamp (In seconds)  */
	public var createdAt: Int? = nil
	/**  Entry update date as Unix timestamp (In seconds)  */
	public var updatedAt: Int? = nil
	/**  The calculated average rank. rank = totalRank / votes  */
	public var rank: Double? = nil
	/**  The sum of all rank values submitted to the baseEntry.anonymousRank action  */
	public var totalRank: Int? = nil
	/**  A count of all requests made to the baseEntry.anonymousRank action  */
	public var votes: Int? = nil
	public var groupId: Int? = nil
	/**  Can be used to store various partner related data as a string  */
	public var partnerData: String? = nil
	/**  Download URL for the entry  */
	public var downloadUrl: String? = nil
	/**  Indexed search text for full text search  */
	public var searchText: String? = nil
	/**  License type used for this entry  */
	public var licenseType: LicenseType? = nil
	/**  Version of the entry data  */
	public var version: Int? = nil
	/**  Thumbnail URL  */
	public var thumbnailUrl: String? = nil
	/**  The Access Control ID assigned to this entry (null when not set, send -1 to
	  remove)  */
	public var accessControlId: Int? = nil
	/**  Entry scheduling start date (null when not set, send -1 to remove)  */
	public var startDate: Int? = nil
	/**  Entry scheduling end date (null when not set, send -1 to remove)  */
	public var endDate: Int? = nil
	/**  Entry external reference id  */
	public var referenceId: String? = nil
	/**  ID of temporary entry that will replace this entry when it's approved and ready
	  for replacement  */
	public var replacingEntryId: String? = nil
	/**  ID of the entry that will be replaced when the replacement approved and this
	  entry is ready  */
	public var replacedEntryId: String? = nil
	/**  Status of the replacement readiness and approval  */
	public var replacementStatus: EntryReplacementStatus? = nil
	/**  Can be used to store various partner related data as a numeric value  */
	public var partnerSortValue: Int? = nil
	/**  Override the default ingestion profile  */
	public var conversionProfileId: Int? = nil
	/**  IF not empty, points to an entry ID the should replace this current entry's id.  */
	public var redirectEntryId: String? = nil
	/**  ID of source root entry, used for clipped, skipped and cropped entries that
	  created from another entry  */
	public var rootEntryId: String? = nil
	/**  ID of source root entry, used for defining entires association  */
	public var parentEntryId: String? = nil
	/**  clipping, skipping and cropping attributes that used to create this entry  */
	public var operationAttributes: Array<OperationAttributes>? = nil
	/**  list of user ids that are entitled to edit the entry (no server enforcement) The
	  difference between entitledUsersEdit and entitledUsersPublish is applicative
	  only  */
	public var entitledUsersEdit: String? = nil
	/**  list of user ids that are entitled to publish the entry (no server enforcement)
	  The difference between entitledUsersEdit and entitledUsersPublish is applicative
	  only  */
	public var entitledUsersPublish: String? = nil
	/**  Comma seperated string of the capabilities of the entry. Any capability needed
	  can be added to this list.  */
	public var capabilities: String? = nil
	/**  Template entry id  */
	public var templateEntryId: String? = nil
	/**  should we display this entry in search  */
	public var displayInSearch: EntryDisplayInSearchType? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = dict["id"] as? String
		}
		if dict["name"] != nil {
			name = dict["name"] as? String
		}
		if dict["description"] != nil {
			description = dict["description"] as? String
		}
		if dict["partnerId"] != nil {
			partnerId = dict["partnerId"] as? Int
		}
		if dict["userId"] != nil {
			userId = dict["userId"] as? String
		}
		if dict["creatorId"] != nil {
			creatorId = dict["creatorId"] as? String
		}
		if dict["tags"] != nil {
			tags = dict["tags"] as? String
		}
		if dict["adminTags"] != nil {
			adminTags = dict["adminTags"] as? String
		}
		if dict["categories"] != nil {
			categories = dict["categories"] as? String
		}
		if dict["categoriesIds"] != nil {
			categoriesIds = dict["categoriesIds"] as? String
		}
		if dict["status"] != nil {
			status = EntryStatus(rawValue: "\(dict["status"]!)")
		}
		if dict["moderationStatus"] != nil {
			moderationStatus = EntryModerationStatus(rawValue: (dict["moderationStatus"] as? Int)!)
		}
		if dict["moderationCount"] != nil {
			moderationCount = dict["moderationCount"] as? Int
		}
		if dict["type"] != nil {
			type = EntryType(rawValue: "\(dict["type"]!)")
		}
		if dict["createdAt"] != nil {
			createdAt = dict["createdAt"] as? Int
		}
		if dict["updatedAt"] != nil {
			updatedAt = dict["updatedAt"] as? Int
		}
		if dict["rank"] != nil {
			rank = dict["rank"] as? Double
		}
		if dict["totalRank"] != nil {
			totalRank = dict["totalRank"] as? Int
		}
		if dict["votes"] != nil {
			votes = dict["votes"] as? Int
		}
		if dict["groupId"] != nil {
			groupId = dict["groupId"] as? Int
		}
		if dict["partnerData"] != nil {
			partnerData = dict["partnerData"] as? String
		}
		if dict["downloadUrl"] != nil {
			downloadUrl = dict["downloadUrl"] as? String
		}
		if dict["searchText"] != nil {
			searchText = dict["searchText"] as? String
		}
		if dict["licenseType"] != nil {
			licenseType = LicenseType(rawValue: (dict["licenseType"] as? Int)!)
		}
		if dict["version"] != nil {
			version = dict["version"] as? Int
		}
		if dict["thumbnailUrl"] != nil {
			thumbnailUrl = dict["thumbnailUrl"] as? String
		}
		if dict["accessControlId"] != nil {
			accessControlId = dict["accessControlId"] as? Int
		}
		if dict["startDate"] != nil {
			startDate = dict["startDate"] as? Int
		}
		if dict["endDate"] != nil {
			endDate = dict["endDate"] as? Int
		}
		if dict["referenceId"] != nil {
			referenceId = dict["referenceId"] as? String
		}
		if dict["replacingEntryId"] != nil {
			replacingEntryId = dict["replacingEntryId"] as? String
		}
		if dict["replacedEntryId"] != nil {
			replacedEntryId = dict["replacedEntryId"] as? String
		}
		if dict["replacementStatus"] != nil {
			replacementStatus = EntryReplacementStatus(rawValue: "\(dict["replacementStatus"]!)")
		}
		if dict["partnerSortValue"] != nil {
			partnerSortValue = dict["partnerSortValue"] as? Int
		}
		if dict["conversionProfileId"] != nil {
			conversionProfileId = dict["conversionProfileId"] as? Int
		}
		if dict["redirectEntryId"] != nil {
			redirectEntryId = dict["redirectEntryId"] as? String
		}
		if dict["rootEntryId"] != nil {
			rootEntryId = dict["rootEntryId"] as? String
		}
		if dict["parentEntryId"] != nil {
			parentEntryId = dict["parentEntryId"] as? String
		}
		if dict["operationAttributes"] != nil {
			operationAttributes = try JSONParser.parse(array: dict["operationAttributes"] as! [Any])
		}
		if dict["entitledUsersEdit"] != nil {
			entitledUsersEdit = dict["entitledUsersEdit"] as? String
		}
		if dict["entitledUsersPublish"] != nil {
			entitledUsersPublish = dict["entitledUsersPublish"] as? String
		}
		if dict["capabilities"] != nil {
			capabilities = dict["capabilities"] as? String
		}
		if dict["templateEntryId"] != nil {
			templateEntryId = dict["templateEntryId"] as? String
		}
		if dict["displayInSearch"] != nil {
			displayInSearch = EntryDisplayInSearchType(rawValue: (dict["displayInSearch"] as? Int)!)
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(name != nil) {
			dict["name"] = name!
		}
		if(description != nil) {
			dict["description"] = description!
		}
		if(userId != nil) {
			dict["userId"] = userId!
		}
		if(creatorId != nil) {
			dict["creatorId"] = creatorId!
		}
		if(tags != nil) {
			dict["tags"] = tags!
		}
		if(adminTags != nil) {
			dict["adminTags"] = adminTags!
		}
		if(categories != nil) {
			dict["categories"] = categories!
		}
		if(categoriesIds != nil) {
			dict["categoriesIds"] = categoriesIds!
		}
		if(type != nil) {
			dict["type"] = type!.rawValue
		}
		if(groupId != nil) {
			dict["groupId"] = groupId!
		}
		if(partnerData != nil) {
			dict["partnerData"] = partnerData!
		}
		if(licenseType != nil) {
			dict["licenseType"] = licenseType!.rawValue
		}
		if(accessControlId != nil) {
			dict["accessControlId"] = accessControlId!
		}
		if(startDate != nil) {
			dict["startDate"] = startDate!
		}
		if(endDate != nil) {
			dict["endDate"] = endDate!
		}
		if(referenceId != nil) {
			dict["referenceId"] = referenceId!
		}
		if(partnerSortValue != nil) {
			dict["partnerSortValue"] = partnerSortValue!
		}
		if(conversionProfileId != nil) {
			dict["conversionProfileId"] = conversionProfileId!
		}
		if(redirectEntryId != nil) {
			dict["redirectEntryId"] = redirectEntryId!
		}
		if(parentEntryId != nil) {
			dict["parentEntryId"] = parentEntryId!
		}
		if(operationAttributes != nil) {
			dict["operationAttributes"] = operationAttributes!.map { value in value.toDictionary() }
		}
		if(entitledUsersEdit != nil) {
			dict["entitledUsersEdit"] = entitledUsersEdit!
		}
		if(entitledUsersPublish != nil) {
			dict["entitledUsersPublish"] = entitledUsersPublish!
		}
		if(templateEntryId != nil) {
			dict["templateEntryId"] = templateEntryId!
		}
		if(displayInSearch != nil) {
			dict["displayInSearch"] = displayInSearch!.rawValue
		}
		return dict
	}
}

