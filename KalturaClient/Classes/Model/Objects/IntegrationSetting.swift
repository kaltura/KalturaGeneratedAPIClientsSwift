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

open class IntegrationSetting: ObjectBase {

	public class IntegrationSettingTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var status: BaseTokenizedObject {
			get {
				return self.append("status") 
			}
		}
		
		public var defaultUserId: BaseTokenizedObject {
			get {
				return self.append("defaultUserId") 
			}
		}
		
		public var accountId: BaseTokenizedObject {
			get {
				return self.append("accountId") 
			}
		}
		
		public var createUserIfNotExist: BaseTokenizedObject {
			get {
				return self.append("createUserIfNotExist") 
			}
		}
		
		public var conversionProfileId: BaseTokenizedObject {
			get {
				return self.append("conversionProfileId") 
			}
		}
		
		public var handleParticipantsMode: BaseTokenizedObject {
			get {
				return self.append("handleParticipantsMode") 
			}
		}
		
		public var deletionPolicy: BaseTokenizedObject {
			get {
				return self.append("deletionPolicy") 
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
		
		public var partnerId: BaseTokenizedObject {
			get {
				return self.append("partnerId") 
			}
		}
		
		public var enableMeetingUpload: BaseTokenizedObject {
			get {
				return self.append("enableMeetingUpload") 
			}
		}
	}

	public var id: Int? = nil
	public var status: VendorIntegrationStatus? = nil
	public var defaultUserId: String? = nil
	public var accountId: String? = nil
	public var createUserIfNotExist: Bool? = nil
	public var conversionProfileId: Int? = nil
	public var handleParticipantsMode: HandleParticipantsMode? = nil
	public var deletionPolicy: Bool? = nil
	public var createdAt: String? = nil
	public var updatedAt: String? = nil
	public var partnerId: Int? = nil
	public var enableMeetingUpload: Bool? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(status: String) {
		self.dict["status"] = status
	}
	
	public func setMultiRequestToken(defaultUserId: String) {
		self.dict["defaultUserId"] = defaultUserId
	}
	
	public func setMultiRequestToken(accountId: String) {
		self.dict["accountId"] = accountId
	}
	
	public func setMultiRequestToken(createUserIfNotExist: String) {
		self.dict["createUserIfNotExist"] = createUserIfNotExist
	}
	
	public func setMultiRequestToken(conversionProfileId: String) {
		self.dict["conversionProfileId"] = conversionProfileId
	}
	
	public func setMultiRequestToken(handleParticipantsMode: String) {
		self.dict["handleParticipantsMode"] = handleParticipantsMode
	}
	
	public func setMultiRequestToken(deletionPolicy: String) {
		self.dict["deletionPolicy"] = deletionPolicy
	}
	
	public func setMultiRequestToken(createdAt: String) {
		self.dict["createdAt"] = createdAt
	}
	
	public func setMultiRequestToken(updatedAt: String) {
		self.dict["updatedAt"] = updatedAt
	}
	
	public func setMultiRequestToken(partnerId: String) {
		self.dict["partnerId"] = partnerId
	}
	
	public func setMultiRequestToken(enableMeetingUpload: String) {
		self.dict["enableMeetingUpload"] = enableMeetingUpload
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = dict["id"] as? Int
		}
		if dict["status"] != nil {
			status = VendorIntegrationStatus(rawValue: (dict["status"] as? Int)!)
		}
		if dict["defaultUserId"] != nil {
			defaultUserId = dict["defaultUserId"] as? String
		}
		if dict["accountId"] != nil {
			accountId = dict["accountId"] as? String
		}
		if dict["createUserIfNotExist"] != nil {
			createUserIfNotExist = dict["createUserIfNotExist"] as? Bool
		}
		if dict["conversionProfileId"] != nil {
			conversionProfileId = dict["conversionProfileId"] as? Int
		}
		if dict["handleParticipantsMode"] != nil {
			handleParticipantsMode = HandleParticipantsMode(rawValue: (dict["handleParticipantsMode"] as? Int)!)
		}
		if dict["deletionPolicy"] != nil {
			deletionPolicy = dict["deletionPolicy"] as? Bool
		}
		if dict["createdAt"] != nil {
			createdAt = dict["createdAt"] as? String
		}
		if dict["updatedAt"] != nil {
			updatedAt = dict["updatedAt"] as? String
		}
		if dict["partnerId"] != nil {
			partnerId = dict["partnerId"] as? Int
		}
		if dict["enableMeetingUpload"] != nil {
			enableMeetingUpload = dict["enableMeetingUpload"] as? Bool
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(defaultUserId != nil) {
			dict["defaultUserId"] = defaultUserId!
		}
		if(createUserIfNotExist != nil) {
			dict["createUserIfNotExist"] = createUserIfNotExist!
		}
		if(conversionProfileId != nil) {
			dict["conversionProfileId"] = conversionProfileId!
		}
		if(handleParticipantsMode != nil) {
			dict["handleParticipantsMode"] = handleParticipantsMode!.rawValue
		}
		if(deletionPolicy != nil) {
			dict["deletionPolicy"] = deletionPolicy!
		}
		if(enableMeetingUpload != nil) {
			dict["enableMeetingUpload"] = enableMeetingUpload!
		}
		return dict
	}
}

