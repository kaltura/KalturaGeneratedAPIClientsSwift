// ===================================================================================================
//                           _  __     _ _
//                          | |/ /__ _| | |_ _  _ _ _ __ _
//                          | ' </ _` | |  _| || | '_/ _` |
//                          |_|\_\__,_|_|\__|\_,_|_| \__,_|
//
// This file is part of the Kaltura Collaborative Media Suite which allows users
// to do with audio, video, and animation what Wiki platforms allow them to do with
// text.
//
// Copyright (C) 2006-2022  Kaltura Inc.
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

open class BaseEntry: ObjectBase {

	public class BaseEntryTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var name: BaseTokenizedObject {
			get {
				return self.append("name") 
			}
		}
		
		public var description: BaseTokenizedObject {
			get {
				return self.append("description") 
			}
		}
		
		public var partnerId: BaseTokenizedObject {
			get {
				return self.append("partnerId") 
			}
		}
		
		public var userId: BaseTokenizedObject {
			get {
				return self.append("userId") 
			}
		}
		
		public var creatorId: BaseTokenizedObject {
			get {
				return self.append("creatorId") 
			}
		}
		
		public var tags: BaseTokenizedObject {
			get {
				return self.append("tags") 
			}
		}
		
		public var adminTags: BaseTokenizedObject {
			get {
				return self.append("adminTags") 
			}
		}
		
		public var categories: BaseTokenizedObject {
			get {
				return self.append("categories") 
			}
		}
		
		public var categoriesIds: BaseTokenizedObject {
			get {
				return self.append("categoriesIds") 
			}
		}
		
		public var status: BaseTokenizedObject {
			get {
				return self.append("status") 
			}
		}
		
		public var moderationStatus: BaseTokenizedObject {
			get {
				return self.append("moderationStatus") 
			}
		}
		
		public var moderationCount: BaseTokenizedObject {
			get {
				return self.append("moderationCount") 
			}
		}
		
		public var type: BaseTokenizedObject {
			get {
				return self.append("type") 
			}
		}
		
		public var createdAt: BaseTokenizedObject {
			get {
				return self.append("createdAt") 
			}
		}
		
		public var updatedAt: BaseTokenizedObject {
			get {
				return self.append("updatedAt") 
			}
		}
		
		public var rank: BaseTokenizedObject {
			get {
				return self.append("rank") 
			}
		}
		
		public var totalRank: BaseTokenizedObject {
			get {
				return self.append("totalRank") 
			}
		}
		
		public var votes: BaseTokenizedObject {
			get {
				return self.append("votes") 
			}
		}
		
		public var groupId: BaseTokenizedObject {
			get {
				return self.append("groupId") 
			}
		}
		
		public var partnerData: BaseTokenizedObject {
			get {
				return self.append("partnerData") 
			}
		}
		
		public var downloadUrl: BaseTokenizedObject {
			get {
				return self.append("downloadUrl") 
			}
		}
		
		public var searchText: BaseTokenizedObject {
			get {
				return self.append("searchText") 
			}
		}
		
		public var licenseType: BaseTokenizedObject {
			get {
				return self.append("licenseType") 
			}
		}
		
		public var version: BaseTokenizedObject {
			get {
				return self.append("version") 
			}
		}
		
		public var thumbnailUrl: BaseTokenizedObject {
			get {
				return self.append("thumbnailUrl") 
			}
		}
		
		public var accessControlId: BaseTokenizedObject {
			get {
				return self.append("accessControlId") 
			}
		}
		
		public var startDate: BaseTokenizedObject {
			get {
				return self.append("startDate") 
			}
		}
		
		public var endDate: BaseTokenizedObject {
			get {
				return self.append("endDate") 
			}
		}
		
		public var referenceId: BaseTokenizedObject {
			get {
				return self.append("referenceId") 
			}
		}
		
		public var replacingEntryId: BaseTokenizedObject {
			get {
				return self.append("replacingEntryId") 
			}
		}
		
		public var replacedEntryId: BaseTokenizedObject {
			get {
				return self.append("replacedEntryId") 
			}
		}
		
		public var replacementStatus: BaseTokenizedObject {
			get {
				return self.append("replacementStatus") 
			}
		}
		
		public var partnerSortValue: BaseTokenizedObject {
			get {
				return self.append("partnerSortValue") 
			}
		}
		
		public var conversionProfileId: BaseTokenizedObject {
			get {
				return self.append("conversionProfileId") 
			}
		}
		
		public var redirectEntryId: BaseTokenizedObject {
			get {
				return self.append("redirectEntryId") 
			}
		}
		
		public var rootEntryId: BaseTokenizedObject {
			get {
				return self.append("rootEntryId") 
			}
		}
		
		public var parentEntryId: BaseTokenizedObject {
			get {
				return self.append("parentEntryId") 
			}
		}
		
		public var operationAttributes: ArrayTokenizedObject<OperationAttributes.OperationAttributesTokenizer> {
			get {
				return ArrayTokenizedObject<OperationAttributes.OperationAttributesTokenizer>(self.append("operationAttributes"))
			} 
		}
		
		public var entitledUsersEdit: BaseTokenizedObject {
			get {
				return self.append("entitledUsersEdit") 
			}
		}
		
		public var entitledUsersPublish: BaseTokenizedObject {
			get {
				return self.append("entitledUsersPublish") 
			}
		}
		
		public var entitledUsersView: BaseTokenizedObject {
			get {
				return self.append("entitledUsersView") 
			}
		}
		
		public var capabilities: BaseTokenizedObject {
			get {
				return self.append("capabilities") 
			}
		}
		
		public var templateEntryId: BaseTokenizedObject {
			get {
				return self.append("templateEntryId") 
			}
		}
		
		public var displayInSearch: BaseTokenizedObject {
			get {
				return self.append("displayInSearch") 
			}
		}
		
		public var application: BaseTokenizedObject {
			get {
				return self.append("application") 
			}
		}
		
		public var applicationVersion: BaseTokenizedObject {
			get {
				return self.append("applicationVersion") 
			}
		}
		
		public var blockAutoTranscript: BaseTokenizedObject {
			get {
				return self.append("blockAutoTranscript") 
			}
		}
	}

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
	  difference between entitledUsersEdit, entitledUsersPublish and entitledUsersView
	  is applicative only  */
	public var entitledUsersEdit: String? = nil
	/**  list of user ids that are entitled to publish the entry (no server enforcement)
	  The difference between entitledUsersEdit, entitledUsersPublish and
	  entitledUsersView is applicative only  */
	public var entitledUsersPublish: String? = nil
	/**  list of user ids that are entitled to view the entry (no server enforcement) The
	  difference between entitledUsersEdit, entitledUsersPublish and entitledUsersView
	  is applicative only  */
	public var entitledUsersView: String? = nil
	/**  Comma seperated string of the capabilities of the entry. Any capability needed
	  can be added to this list.  */
	public var capabilities: String? = nil
	/**  Template entry id  */
	public var templateEntryId: String? = nil
	/**  should we display this entry in search  */
	public var displayInSearch: EntryDisplayInSearchType? = nil
	/**  Entry application  */
	public var application: EntryApplication? = nil
	/**  Entry application version  */
	public var applicationVersion: String? = nil
	/**  Block auto transcript on Entry  */
	public var blockAutoTranscript: Bool? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(name: String) {
		self.dict["name"] = name
	}
	
	public func setMultiRequestToken(description: String) {
		self.dict["description"] = description
	}
	
	public func setMultiRequestToken(partnerId: String) {
		self.dict["partnerId"] = partnerId
	}
	
	public func setMultiRequestToken(userId: String) {
		self.dict["userId"] = userId
	}
	
	public func setMultiRequestToken(creatorId: String) {
		self.dict["creatorId"] = creatorId
	}
	
	public func setMultiRequestToken(tags: String) {
		self.dict["tags"] = tags
	}
	
	public func setMultiRequestToken(adminTags: String) {
		self.dict["adminTags"] = adminTags
	}
	
	public func setMultiRequestToken(categories: String) {
		self.dict["categories"] = categories
	}
	
	public func setMultiRequestToken(categoriesIds: String) {
		self.dict["categoriesIds"] = categoriesIds
	}
	
	public func setMultiRequestToken(status: String) {
		self.dict["status"] = status
	}
	
	public func setMultiRequestToken(moderationStatus: String) {
		self.dict["moderationStatus"] = moderationStatus
	}
	
	public func setMultiRequestToken(moderationCount: String) {
		self.dict["moderationCount"] = moderationCount
	}
	
	public func setMultiRequestToken(type: String) {
		self.dict["type"] = type
	}
	
	public func setMultiRequestToken(createdAt: String) {
		self.dict["createdAt"] = createdAt
	}
	
	public func setMultiRequestToken(updatedAt: String) {
		self.dict["updatedAt"] = updatedAt
	}
	
	public func setMultiRequestToken(rank: String) {
		self.dict["rank"] = rank
	}
	
	public func setMultiRequestToken(totalRank: String) {
		self.dict["totalRank"] = totalRank
	}
	
	public func setMultiRequestToken(votes: String) {
		self.dict["votes"] = votes
	}
	
	public func setMultiRequestToken(groupId: String) {
		self.dict["groupId"] = groupId
	}
	
	public func setMultiRequestToken(partnerData: String) {
		self.dict["partnerData"] = partnerData
	}
	
	public func setMultiRequestToken(downloadUrl: String) {
		self.dict["downloadUrl"] = downloadUrl
	}
	
	public func setMultiRequestToken(searchText: String) {
		self.dict["searchText"] = searchText
	}
	
	public func setMultiRequestToken(licenseType: String) {
		self.dict["licenseType"] = licenseType
	}
	
	public func setMultiRequestToken(version: String) {
		self.dict["version"] = version
	}
	
	public func setMultiRequestToken(thumbnailUrl: String) {
		self.dict["thumbnailUrl"] = thumbnailUrl
	}
	
	public func setMultiRequestToken(accessControlId: String) {
		self.dict["accessControlId"] = accessControlId
	}
	
	public func setMultiRequestToken(startDate: String) {
		self.dict["startDate"] = startDate
	}
	
	public func setMultiRequestToken(endDate: String) {
		self.dict["endDate"] = endDate
	}
	
	public func setMultiRequestToken(referenceId: String) {
		self.dict["referenceId"] = referenceId
	}
	
	public func setMultiRequestToken(replacingEntryId: String) {
		self.dict["replacingEntryId"] = replacingEntryId
	}
	
	public func setMultiRequestToken(replacedEntryId: String) {
		self.dict["replacedEntryId"] = replacedEntryId
	}
	
	public func setMultiRequestToken(replacementStatus: String) {
		self.dict["replacementStatus"] = replacementStatus
	}
	
	public func setMultiRequestToken(partnerSortValue: String) {
		self.dict["partnerSortValue"] = partnerSortValue
	}
	
	public func setMultiRequestToken(conversionProfileId: String) {
		self.dict["conversionProfileId"] = conversionProfileId
	}
	
	public func setMultiRequestToken(redirectEntryId: String) {
		self.dict["redirectEntryId"] = redirectEntryId
	}
	
	public func setMultiRequestToken(rootEntryId: String) {
		self.dict["rootEntryId"] = rootEntryId
	}
	
	public func setMultiRequestToken(parentEntryId: String) {
		self.dict["parentEntryId"] = parentEntryId
	}
	
	public func setMultiRequestToken(entitledUsersEdit: String) {
		self.dict["entitledUsersEdit"] = entitledUsersEdit
	}
	
	public func setMultiRequestToken(entitledUsersPublish: String) {
		self.dict["entitledUsersPublish"] = entitledUsersPublish
	}
	
	public func setMultiRequestToken(entitledUsersView: String) {
		self.dict["entitledUsersView"] = entitledUsersView
	}
	
	public func setMultiRequestToken(capabilities: String) {
		self.dict["capabilities"] = capabilities
	}
	
	public func setMultiRequestToken(templateEntryId: String) {
		self.dict["templateEntryId"] = templateEntryId
	}
	
	public func setMultiRequestToken(displayInSearch: String) {
		self.dict["displayInSearch"] = displayInSearch
	}
	
	public func setMultiRequestToken(application: String) {
		self.dict["application"] = application
	}
	
	public func setMultiRequestToken(applicationVersion: String) {
		self.dict["applicationVersion"] = applicationVersion
	}
	
	public func setMultiRequestToken(blockAutoTranscript: String) {
		self.dict["blockAutoTranscript"] = blockAutoTranscript
	}
	
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
		if dict["entitledUsersView"] != nil {
			entitledUsersView = dict["entitledUsersView"] as? String
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
		if dict["application"] != nil {
			application = EntryApplication(rawValue: "\(dict["application"]!)")
		}
		if dict["applicationVersion"] != nil {
			applicationVersion = dict["applicationVersion"] as? String
		}
		if dict["blockAutoTranscript"] != nil {
			blockAutoTranscript = dict["blockAutoTranscript"] as? Bool
		}

	}

	internal override func toDictionary() -> [String: Any] {
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
		if(entitledUsersView != nil) {
			dict["entitledUsersView"] = entitledUsersView!
		}
		if(templateEntryId != nil) {
			dict["templateEntryId"] = templateEntryId!
		}
		if(displayInSearch != nil) {
			dict["displayInSearch"] = displayInSearch!.rawValue
		}
		if(application != nil) {
			dict["application"] = application!.rawValue
		}
		if(applicationVersion != nil) {
			dict["applicationVersion"] = applicationVersion!
		}
		if(blockAutoTranscript != nil) {
			dict["blockAutoTranscript"] = blockAutoTranscript!
		}
		return dict
	}
}

