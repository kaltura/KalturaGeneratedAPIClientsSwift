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

open class BulkUploadResultEntry: BulkUploadResult {

	public class BulkUploadResultEntryTokenizer: BulkUploadResult.BulkUploadResultTokenizer {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
		
		public var title: BaseTokenizedObject {
			get {
				return self.append("title") 
			}
		}
		
		public var description: BaseTokenizedObject {
			get {
				return self.append("description") 
			}
		}
		
		public var tags: BaseTokenizedObject {
			get {
				return self.append("tags") 
			}
		}
		
		public var url: BaseTokenizedObject {
			get {
				return self.append("url") 
			}
		}
		
		public var contentType: BaseTokenizedObject {
			get {
				return self.append("contentType") 
			}
		}
		
		public var conversionProfileId: BaseTokenizedObject {
			get {
				return self.append("conversionProfileId") 
			}
		}
		
		public var accessControlProfileId: BaseTokenizedObject {
			get {
				return self.append("accessControlProfileId") 
			}
		}
		
		public var category: BaseTokenizedObject {
			get {
				return self.append("category") 
			}
		}
		
		public var scheduleStartDate: BaseTokenizedObject {
			get {
				return self.append("scheduleStartDate") 
			}
		}
		
		public var scheduleEndDate: BaseTokenizedObject {
			get {
				return self.append("scheduleEndDate") 
			}
		}
		
		public var entryStatus: BaseTokenizedObject {
			get {
				return self.append("entryStatus") 
			}
		}
		
		public var thumbnailUrl: BaseTokenizedObject {
			get {
				return self.append("thumbnailUrl") 
			}
		}
		
		public var thumbnailSaved: BaseTokenizedObject {
			get {
				return self.append("thumbnailSaved") 
			}
		}
		
		public var sshPrivateKey: BaseTokenizedObject {
			get {
				return self.append("sshPrivateKey") 
			}
		}
		
		public var sshPublicKey: BaseTokenizedObject {
			get {
				return self.append("sshPublicKey") 
			}
		}
		
		public var sshKeyPassphrase: BaseTokenizedObject {
			get {
				return self.append("sshKeyPassphrase") 
			}
		}
		
		public var creatorId: BaseTokenizedObject {
			get {
				return self.append("creatorId") 
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
		
		public var ownerId: BaseTokenizedObject {
			get {
				return self.append("ownerId") 
			}
		}
		
		public var referenceId: BaseTokenizedObject {
			get {
				return self.append("referenceId") 
			}
		}
		
		public var templateEntryId: BaseTokenizedObject {
			get {
				return self.append("templateEntryId") 
			}
		}
	}

	public var entryId: String? = nil
	public var title: String? = nil
	public var description: String? = nil
	public var tags: String? = nil
	public var url: String? = nil
	public var contentType: String? = nil
	public var conversionProfileId: Int? = nil
	public var accessControlProfileId: Int? = nil
	public var category: String? = nil
	public var scheduleStartDate: Int? = nil
	public var scheduleEndDate: Int? = nil
	public var entryStatus: Int? = nil
	public var thumbnailUrl: String? = nil
	public var thumbnailSaved: Bool? = nil
	public var sshPrivateKey: String? = nil
	public var sshPublicKey: String? = nil
	public var sshKeyPassphrase: String? = nil
	public var creatorId: String? = nil
	public var entitledUsersEdit: String? = nil
	public var entitledUsersPublish: String? = nil
	public var ownerId: String? = nil
	public var referenceId: String? = nil
	public var templateEntryId: String? = nil


	public func setMultiRequestToken(entryId: String) {
		self.dict["entryId"] = entryId
	}
	
	public func setMultiRequestToken(title: String) {
		self.dict["title"] = title
	}
	
	public func setMultiRequestToken(description: String) {
		self.dict["description"] = description
	}
	
	public func setMultiRequestToken(tags: String) {
		self.dict["tags"] = tags
	}
	
	public func setMultiRequestToken(url: String) {
		self.dict["url"] = url
	}
	
	public func setMultiRequestToken(contentType: String) {
		self.dict["contentType"] = contentType
	}
	
	public func setMultiRequestToken(conversionProfileId: String) {
		self.dict["conversionProfileId"] = conversionProfileId
	}
	
	public func setMultiRequestToken(accessControlProfileId: String) {
		self.dict["accessControlProfileId"] = accessControlProfileId
	}
	
	public func setMultiRequestToken(category: String) {
		self.dict["category"] = category
	}
	
	public func setMultiRequestToken(scheduleStartDate: String) {
		self.dict["scheduleStartDate"] = scheduleStartDate
	}
	
	public func setMultiRequestToken(scheduleEndDate: String) {
		self.dict["scheduleEndDate"] = scheduleEndDate
	}
	
	public func setMultiRequestToken(entryStatus: String) {
		self.dict["entryStatus"] = entryStatus
	}
	
	public func setMultiRequestToken(thumbnailUrl: String) {
		self.dict["thumbnailUrl"] = thumbnailUrl
	}
	
	public func setMultiRequestToken(thumbnailSaved: String) {
		self.dict["thumbnailSaved"] = thumbnailSaved
	}
	
	public func setMultiRequestToken(sshPrivateKey: String) {
		self.dict["sshPrivateKey"] = sshPrivateKey
	}
	
	public func setMultiRequestToken(sshPublicKey: String) {
		self.dict["sshPublicKey"] = sshPublicKey
	}
	
	public func setMultiRequestToken(sshKeyPassphrase: String) {
		self.dict["sshKeyPassphrase"] = sshKeyPassphrase
	}
	
	public func setMultiRequestToken(creatorId: String) {
		self.dict["creatorId"] = creatorId
	}
	
	public func setMultiRequestToken(entitledUsersEdit: String) {
		self.dict["entitledUsersEdit"] = entitledUsersEdit
	}
	
	public func setMultiRequestToken(entitledUsersPublish: String) {
		self.dict["entitledUsersPublish"] = entitledUsersPublish
	}
	
	public func setMultiRequestToken(ownerId: String) {
		self.dict["ownerId"] = ownerId
	}
	
	public func setMultiRequestToken(referenceId: String) {
		self.dict["referenceId"] = referenceId
	}
	
	public func setMultiRequestToken(templateEntryId: String) {
		self.dict["templateEntryId"] = templateEntryId
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["entryId"] != nil {
			entryId = dict["entryId"] as? String
		}
		if dict["title"] != nil {
			title = dict["title"] as? String
		}
		if dict["description"] != nil {
			description = dict["description"] as? String
		}
		if dict["tags"] != nil {
			tags = dict["tags"] as? String
		}
		if dict["url"] != nil {
			url = dict["url"] as? String
		}
		if dict["contentType"] != nil {
			contentType = dict["contentType"] as? String
		}
		if dict["conversionProfileId"] != nil {
			conversionProfileId = dict["conversionProfileId"] as? Int
		}
		if dict["accessControlProfileId"] != nil {
			accessControlProfileId = dict["accessControlProfileId"] as? Int
		}
		if dict["category"] != nil {
			category = dict["category"] as? String
		}
		if dict["scheduleStartDate"] != nil {
			scheduleStartDate = dict["scheduleStartDate"] as? Int
		}
		if dict["scheduleEndDate"] != nil {
			scheduleEndDate = dict["scheduleEndDate"] as? Int
		}
		if dict["entryStatus"] != nil {
			entryStatus = dict["entryStatus"] as? Int
		}
		if dict["thumbnailUrl"] != nil {
			thumbnailUrl = dict["thumbnailUrl"] as? String
		}
		if dict["thumbnailSaved"] != nil {
			thumbnailSaved = dict["thumbnailSaved"] as? Bool
		}
		if dict["sshPrivateKey"] != nil {
			sshPrivateKey = dict["sshPrivateKey"] as? String
		}
		if dict["sshPublicKey"] != nil {
			sshPublicKey = dict["sshPublicKey"] as? String
		}
		if dict["sshKeyPassphrase"] != nil {
			sshKeyPassphrase = dict["sshKeyPassphrase"] as? String
		}
		if dict["creatorId"] != nil {
			creatorId = dict["creatorId"] as? String
		}
		if dict["entitledUsersEdit"] != nil {
			entitledUsersEdit = dict["entitledUsersEdit"] as? String
		}
		if dict["entitledUsersPublish"] != nil {
			entitledUsersPublish = dict["entitledUsersPublish"] as? String
		}
		if dict["ownerId"] != nil {
			ownerId = dict["ownerId"] as? String
		}
		if dict["referenceId"] != nil {
			referenceId = dict["referenceId"] as? String
		}
		if dict["templateEntryId"] != nil {
			templateEntryId = dict["templateEntryId"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(entryId != nil) {
			dict["entryId"] = entryId!
		}
		if(title != nil) {
			dict["title"] = title!
		}
		if(description != nil) {
			dict["description"] = description!
		}
		if(tags != nil) {
			dict["tags"] = tags!
		}
		if(url != nil) {
			dict["url"] = url!
		}
		if(contentType != nil) {
			dict["contentType"] = contentType!
		}
		if(conversionProfileId != nil) {
			dict["conversionProfileId"] = conversionProfileId!
		}
		if(accessControlProfileId != nil) {
			dict["accessControlProfileId"] = accessControlProfileId!
		}
		if(category != nil) {
			dict["category"] = category!
		}
		if(scheduleStartDate != nil) {
			dict["scheduleStartDate"] = scheduleStartDate!
		}
		if(scheduleEndDate != nil) {
			dict["scheduleEndDate"] = scheduleEndDate!
		}
		if(entryStatus != nil) {
			dict["entryStatus"] = entryStatus!
		}
		if(thumbnailUrl != nil) {
			dict["thumbnailUrl"] = thumbnailUrl!
		}
		if(thumbnailSaved != nil) {
			dict["thumbnailSaved"] = thumbnailSaved!
		}
		if(sshPrivateKey != nil) {
			dict["sshPrivateKey"] = sshPrivateKey!
		}
		if(sshPublicKey != nil) {
			dict["sshPublicKey"] = sshPublicKey!
		}
		if(sshKeyPassphrase != nil) {
			dict["sshKeyPassphrase"] = sshKeyPassphrase!
		}
		if(creatorId != nil) {
			dict["creatorId"] = creatorId!
		}
		if(entitledUsersEdit != nil) {
			dict["entitledUsersEdit"] = entitledUsersEdit!
		}
		if(entitledUsersPublish != nil) {
			dict["entitledUsersPublish"] = entitledUsersPublish!
		}
		if(ownerId != nil) {
			dict["ownerId"] = ownerId!
		}
		if(referenceId != nil) {
			dict["referenceId"] = referenceId!
		}
		if(templateEntryId != nil) {
			dict["templateEntryId"] = templateEntryId!
		}
		return dict
	}
}

