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
// Copyright (C) 2006-2019  Kaltura Inc.
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

open class ModerationFlag: ObjectBase {

	public class ModerationFlagTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
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
		
		public var moderationObjectType: BaseTokenizedObject {
			get {
				return self.append("moderationObjectType") 
			}
		}
		
		public var flaggedEntryId: BaseTokenizedObject {
			get {
				return self.append("flaggedEntryId") 
			}
		}
		
		public var flaggedUserId: BaseTokenizedObject {
			get {
				return self.append("flaggedUserId") 
			}
		}
		
		public var status: BaseTokenizedObject {
			get {
				return self.append("status") 
			}
		}
		
		public var comments: BaseTokenizedObject {
			get {
				return self.append("comments") 
			}
		}
		
		public var flagType: BaseTokenizedObject {
			get {
				return self.append("flagType") 
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
	}

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


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(partnerId: String) {
		self.dict["partnerId"] = partnerId
	}
	
	public func setMultiRequestToken(userId: String) {
		self.dict["userId"] = userId
	}
	
	public func setMultiRequestToken(moderationObjectType: String) {
		self.dict["moderationObjectType"] = moderationObjectType
	}
	
	public func setMultiRequestToken(flaggedEntryId: String) {
		self.dict["flaggedEntryId"] = flaggedEntryId
	}
	
	public func setMultiRequestToken(flaggedUserId: String) {
		self.dict["flaggedUserId"] = flaggedUserId
	}
	
	public func setMultiRequestToken(status: String) {
		self.dict["status"] = status
	}
	
	public func setMultiRequestToken(comments: String) {
		self.dict["comments"] = comments
	}
	
	public func setMultiRequestToken(flagType: String) {
		self.dict["flagType"] = flagType
	}
	
	public func setMultiRequestToken(createdAt: String) {
		self.dict["createdAt"] = createdAt
	}
	
	public func setMultiRequestToken(updatedAt: String) {
		self.dict["updatedAt"] = updatedAt
	}
	
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

	internal override func toDictionary() -> [String: Any] {
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

