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

open class ModerationFlag: ObjectBase {

	/**  Moderation flag id  */
	public var id: Int? = nil
	public var partnerId: Int? = nil
	/**  The user id that added the moderation flag  */
	public var userId: String? = nil
	/**  The type of the moderation flag (entry or user)  */
	public var moderationObjectType: ModerationObjectType? = nil
	/**  If moderation flag is set for entry, this is the flagged entry id  */
	public var flaggedEntryId: String? = nil
	/**  If moderation flag is set for user, this is the flagged user id  */
	public var flaggedUserId: String? = nil
	/**  The moderation flag status  */
	public var status: ModerationFlagStatus? = nil
	/**  The comment that was added to the flag  */
	public var comments: String? = nil
	public var flagType: ModerationFlagType? = nil
	public var createdAt: Int? = nil
	public var updatedAt: Int? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = dict["id"] as? Int
		}
		if dict["partnerId"] != nil {
			partnerId = dict["partnerId"] as? Int
		}
		if dict["userId"] != nil {
			userId = dict["userId"] as? String
		}
		if dict["moderationObjectType"] != nil {
			moderationObjectType = ModerationObjectType(rawValue: "\(dict["moderationObjectType"]!)")
		}
		if dict["flaggedEntryId"] != nil {
			flaggedEntryId = dict["flaggedEntryId"] as? String
		}
		if dict["flaggedUserId"] != nil {
			flaggedUserId = dict["flaggedUserId"] as? String
		}
		if dict["status"] != nil {
			status = ModerationFlagStatus(rawValue: "\(dict["status"]!)")
		}
		if dict["comments"] != nil {
			comments = dict["comments"] as? String
		}
		if dict["flagType"] != nil {
			flagType = ModerationFlagType(rawValue: (dict["flagType"] as? Int)!)
		}
		if dict["createdAt"] != nil {
			createdAt = dict["createdAt"] as? Int
		}
		if dict["updatedAt"] != nil {
			updatedAt = dict["updatedAt"] as? Int
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(flaggedEntryId != nil) {
			dict["flaggedEntryId"] = flaggedEntryId!
		}
		if(flaggedUserId != nil) {
			dict["flaggedUserId"] = flaggedUserId!
		}
		if(comments != nil) {
			dict["comments"] = comments!
		}
		if(flagType != nil) {
			dict["flagType"] = flagType!.rawValue
		}
		return dict
	}
}

