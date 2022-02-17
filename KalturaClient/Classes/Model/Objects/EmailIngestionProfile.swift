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

open class EmailIngestionProfile: ObjectBase {

	public class EmailIngestionProfileTokenizer: ObjectBase.ObjectBaseTokenizer {
		
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
		
		public var emailAddress: BaseTokenizedObject {
			get {
				return self.append("emailAddress") 
			}
		}
		
		public var mailboxId: BaseTokenizedObject {
			get {
				return self.append("mailboxId") 
			}
		}
		
		public var partnerId: BaseTokenizedObject {
			get {
				return self.append("partnerId") 
			}
		}
		
		public var conversionProfile2Id: BaseTokenizedObject {
			get {
				return self.append("conversionProfile2Id") 
			}
		}
		
		public var moderationStatus: BaseTokenizedObject {
			get {
				return self.append("moderationStatus") 
			}
		}
		
		public var status: BaseTokenizedObject {
			get {
				return self.append("status") 
			}
		}
		
		public var createdAt: BaseTokenizedObject {
			get {
				return self.append("createdAt") 
			}
		}
		
		public var defaultCategory: BaseTokenizedObject {
			get {
				return self.append("defaultCategory") 
			}
		}
		
		public var defaultUserId: BaseTokenizedObject {
			get {
				return self.append("defaultUserId") 
			}
		}
		
		public var defaultTags: BaseTokenizedObject {
			get {
				return self.append("defaultTags") 
			}
		}
		
		public var defaultAdminTags: BaseTokenizedObject {
			get {
				return self.append("defaultAdminTags") 
			}
		}
		
		public var maxAttachmentSizeKbytes: BaseTokenizedObject {
			get {
				return self.append("maxAttachmentSizeKbytes") 
			}
		}
		
		public var maxAttachmentsPerMail: BaseTokenizedObject {
			get {
				return self.append("maxAttachmentsPerMail") 
			}
		}
	}

	public var id: Int? = nil
	public var name: String? = nil
	public var description: String? = nil
	public var emailAddress: String? = nil
	public var mailboxId: String? = nil
	public var partnerId: Int? = nil
	public var conversionProfile2Id: Int? = nil
	public var moderationStatus: EntryModerationStatus? = nil
	public var status: EmailIngestionProfileStatus? = nil
	public var createdAt: String? = nil
	public var defaultCategory: String? = nil
	public var defaultUserId: String? = nil
	public var defaultTags: String? = nil
	public var defaultAdminTags: String? = nil
	public var maxAttachmentSizeKbytes: Int? = nil
	public var maxAttachmentsPerMail: Int? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(name: String) {
		self.dict["name"] = name
	}
	
	public func setMultiRequestToken(description: String) {
		self.dict["description"] = description
	}
	
	public func setMultiRequestToken(emailAddress: String) {
		self.dict["emailAddress"] = emailAddress
	}
	
	public func setMultiRequestToken(mailboxId: String) {
		self.dict["mailboxId"] = mailboxId
	}
	
	public func setMultiRequestToken(partnerId: String) {
		self.dict["partnerId"] = partnerId
	}
	
	public func setMultiRequestToken(conversionProfile2Id: String) {
		self.dict["conversionProfile2Id"] = conversionProfile2Id
	}
	
	public func setMultiRequestToken(moderationStatus: String) {
		self.dict["moderationStatus"] = moderationStatus
	}
	
	public func setMultiRequestToken(status: String) {
		self.dict["status"] = status
	}
	
	public func setMultiRequestToken(createdAt: String) {
		self.dict["createdAt"] = createdAt
	}
	
	public func setMultiRequestToken(defaultCategory: String) {
		self.dict["defaultCategory"] = defaultCategory
	}
	
	public func setMultiRequestToken(defaultUserId: String) {
		self.dict["defaultUserId"] = defaultUserId
	}
	
	public func setMultiRequestToken(defaultTags: String) {
		self.dict["defaultTags"] = defaultTags
	}
	
	public func setMultiRequestToken(defaultAdminTags: String) {
		self.dict["defaultAdminTags"] = defaultAdminTags
	}
	
	public func setMultiRequestToken(maxAttachmentSizeKbytes: String) {
		self.dict["maxAttachmentSizeKbytes"] = maxAttachmentSizeKbytes
	}
	
	public func setMultiRequestToken(maxAttachmentsPerMail: String) {
		self.dict["maxAttachmentsPerMail"] = maxAttachmentsPerMail
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = dict["id"] as? Int
		}
		if dict["name"] != nil {
			name = dict["name"] as? String
		}
		if dict["description"] != nil {
			description = dict["description"] as? String
		}
		if dict["emailAddress"] != nil {
			emailAddress = dict["emailAddress"] as? String
		}
		if dict["mailboxId"] != nil {
			mailboxId = dict["mailboxId"] as? String
		}
		if dict["partnerId"] != nil {
			partnerId = dict["partnerId"] as? Int
		}
		if dict["conversionProfile2Id"] != nil {
			conversionProfile2Id = dict["conversionProfile2Id"] as? Int
		}
		if dict["moderationStatus"] != nil {
			moderationStatus = EntryModerationStatus(rawValue: (dict["moderationStatus"] as? Int)!)
		}
		if dict["status"] != nil {
			status = EmailIngestionProfileStatus(rawValue: (dict["status"] as? Int)!)
		}
		if dict["createdAt"] != nil {
			createdAt = dict["createdAt"] as? String
		}
		if dict["defaultCategory"] != nil {
			defaultCategory = dict["defaultCategory"] as? String
		}
		if dict["defaultUserId"] != nil {
			defaultUserId = dict["defaultUserId"] as? String
		}
		if dict["defaultTags"] != nil {
			defaultTags = dict["defaultTags"] as? String
		}
		if dict["defaultAdminTags"] != nil {
			defaultAdminTags = dict["defaultAdminTags"] as? String
		}
		if dict["maxAttachmentSizeKbytes"] != nil {
			maxAttachmentSizeKbytes = dict["maxAttachmentSizeKbytes"] as? Int
		}
		if dict["maxAttachmentsPerMail"] != nil {
			maxAttachmentsPerMail = dict["maxAttachmentsPerMail"] as? Int
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
		if(emailAddress != nil) {
			dict["emailAddress"] = emailAddress!
		}
		if(mailboxId != nil) {
			dict["mailboxId"] = mailboxId!
		}
		if(conversionProfile2Id != nil) {
			dict["conversionProfile2Id"] = conversionProfile2Id!
		}
		if(moderationStatus != nil) {
			dict["moderationStatus"] = moderationStatus!.rawValue
		}
		if(defaultCategory != nil) {
			dict["defaultCategory"] = defaultCategory!
		}
		if(defaultUserId != nil) {
			dict["defaultUserId"] = defaultUserId!
		}
		if(defaultTags != nil) {
			dict["defaultTags"] = defaultTags!
		}
		if(defaultAdminTags != nil) {
			dict["defaultAdminTags"] = defaultAdminTags!
		}
		if(maxAttachmentSizeKbytes != nil) {
			dict["maxAttachmentSizeKbytes"] = maxAttachmentSizeKbytes!
		}
		if(maxAttachmentsPerMail != nil) {
			dict["maxAttachmentsPerMail"] = maxAttachmentsPerMail!
		}
		return dict
	}
}

