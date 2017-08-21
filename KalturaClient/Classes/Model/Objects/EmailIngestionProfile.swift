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

open class EmailIngestionProfile: ObjectBase {

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

	public override func toDictionary() -> [String: Any] {
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

