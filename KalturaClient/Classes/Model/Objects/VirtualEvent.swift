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
// Copyright (C) 2006-2023  Kaltura Inc.
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

open class VirtualEvent: ObjectBase {

	public class VirtualEventTokenizer: ObjectBase.ObjectBaseTokenizer {
		
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
		
		public var status: BaseTokenizedObject {
			get {
				return self.append("status") 
			}
		}
		
		public var tags: BaseTokenizedObject {
			get {
				return self.append("tags") 
			}
		}
		
		public var attendeesGroupIds: BaseTokenizedObject {
			get {
				return self.append("attendeesGroupIds") 
			}
		}
		
		public var adminsGroupIds: BaseTokenizedObject {
			get {
				return self.append("adminsGroupIds") 
			}
		}
		
		public var registrationScheduleEventId: BaseTokenizedObject {
			get {
				return self.append("registrationScheduleEventId") 
			}
		}
		
		public var agendaScheduleEventId: BaseTokenizedObject {
			get {
				return self.append("agendaScheduleEventId") 
			}
		}
		
		public var mainEventScheduleEventId: BaseTokenizedObject {
			get {
				return self.append("mainEventScheduleEventId") 
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
		
		public var deletionDueDate: BaseTokenizedObject {
			get {
				return self.append("deletionDueDate") 
			}
		}
		
		public var registrationFormSchema: BaseTokenizedObject {
			get {
				return self.append("registrationFormSchema") 
			}
		}
		
		public var eventUrl: BaseTokenizedObject {
			get {
				return self.append("eventUrl") 
			}
		}
		
		public var webhookRegistrationToken: BaseTokenizedObject {
			get {
				return self.append("webhookRegistrationToken") 
			}
		}
	}

	public var id: Int? = nil
	public var partnerId: Int? = nil
	public var name: String? = nil
	public var description: String? = nil
	public var status: VirtualEventStatus? = nil
	public var tags: String? = nil
	public var attendeesGroupIds: String? = nil
	public var adminsGroupIds: String? = nil
	public var registrationScheduleEventId: Int? = nil
	public var agendaScheduleEventId: Int? = nil
	public var mainEventScheduleEventId: Int? = nil
	public var createdAt: Int? = nil
	public var updatedAt: Int? = nil
	public var deletionDueDate: Int? = nil
	/**  JSON-Schema of the Registration Form  */
	public var registrationFormSchema: String? = nil
	/**  The Virtual Event Url  */
	public var eventUrl: String? = nil
	/**  The Virtual Event WebHook registration token  */
	public var webhookRegistrationToken: String? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(partnerId: String) {
		self.dict["partnerId"] = partnerId
	}
	
	public func setMultiRequestToken(name: String) {
		self.dict["name"] = name
	}
	
	public func setMultiRequestToken(description: String) {
		self.dict["description"] = description
	}
	
	public func setMultiRequestToken(status: String) {
		self.dict["status"] = status
	}
	
	public func setMultiRequestToken(tags: String) {
		self.dict["tags"] = tags
	}
	
	public func setMultiRequestToken(attendeesGroupIds: String) {
		self.dict["attendeesGroupIds"] = attendeesGroupIds
	}
	
	public func setMultiRequestToken(adminsGroupIds: String) {
		self.dict["adminsGroupIds"] = adminsGroupIds
	}
	
	public func setMultiRequestToken(registrationScheduleEventId: String) {
		self.dict["registrationScheduleEventId"] = registrationScheduleEventId
	}
	
	public func setMultiRequestToken(agendaScheduleEventId: String) {
		self.dict["agendaScheduleEventId"] = agendaScheduleEventId
	}
	
	public func setMultiRequestToken(mainEventScheduleEventId: String) {
		self.dict["mainEventScheduleEventId"] = mainEventScheduleEventId
	}
	
	public func setMultiRequestToken(createdAt: String) {
		self.dict["createdAt"] = createdAt
	}
	
	public func setMultiRequestToken(updatedAt: String) {
		self.dict["updatedAt"] = updatedAt
	}
	
	public func setMultiRequestToken(deletionDueDate: String) {
		self.dict["deletionDueDate"] = deletionDueDate
	}
	
	public func setMultiRequestToken(registrationFormSchema: String) {
		self.dict["registrationFormSchema"] = registrationFormSchema
	}
	
	public func setMultiRequestToken(eventUrl: String) {
		self.dict["eventUrl"] = eventUrl
	}
	
	public func setMultiRequestToken(webhookRegistrationToken: String) {
		self.dict["webhookRegistrationToken"] = webhookRegistrationToken
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = dict["id"] as? Int
		}
		if dict["partnerId"] != nil {
			partnerId = dict["partnerId"] as? Int
		}
		if dict["name"] != nil {
			name = dict["name"] as? String
		}
		if dict["description"] != nil {
			description = dict["description"] as? String
		}
		if dict["status"] != nil {
			status = VirtualEventStatus(rawValue: (dict["status"] as? Int)!)
		}
		if dict["tags"] != nil {
			tags = dict["tags"] as? String
		}
		if dict["attendeesGroupIds"] != nil {
			attendeesGroupIds = dict["attendeesGroupIds"] as? String
		}
		if dict["adminsGroupIds"] != nil {
			adminsGroupIds = dict["adminsGroupIds"] as? String
		}
		if dict["registrationScheduleEventId"] != nil {
			registrationScheduleEventId = dict["registrationScheduleEventId"] as? Int
		}
		if dict["agendaScheduleEventId"] != nil {
			agendaScheduleEventId = dict["agendaScheduleEventId"] as? Int
		}
		if dict["mainEventScheduleEventId"] != nil {
			mainEventScheduleEventId = dict["mainEventScheduleEventId"] as? Int
		}
		if dict["createdAt"] != nil {
			createdAt = dict["createdAt"] as? Int
		}
		if dict["updatedAt"] != nil {
			updatedAt = dict["updatedAt"] as? Int
		}
		if dict["deletionDueDate"] != nil {
			deletionDueDate = dict["deletionDueDate"] as? Int
		}
		if dict["registrationFormSchema"] != nil {
			registrationFormSchema = dict["registrationFormSchema"] as? String
		}
		if dict["eventUrl"] != nil {
			eventUrl = dict["eventUrl"] as? String
		}
		if dict["webhookRegistrationToken"] != nil {
			webhookRegistrationToken = dict["webhookRegistrationToken"] as? String
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
		if(tags != nil) {
			dict["tags"] = tags!
		}
		if(attendeesGroupIds != nil) {
			dict["attendeesGroupIds"] = attendeesGroupIds!
		}
		if(adminsGroupIds != nil) {
			dict["adminsGroupIds"] = adminsGroupIds!
		}
		if(registrationScheduleEventId != nil) {
			dict["registrationScheduleEventId"] = registrationScheduleEventId!
		}
		if(agendaScheduleEventId != nil) {
			dict["agendaScheduleEventId"] = agendaScheduleEventId!
		}
		if(mainEventScheduleEventId != nil) {
			dict["mainEventScheduleEventId"] = mainEventScheduleEventId!
		}
		if(deletionDueDate != nil) {
			dict["deletionDueDate"] = deletionDueDate!
		}
		if(registrationFormSchema != nil) {
			dict["registrationFormSchema"] = registrationFormSchema!
		}
		if(eventUrl != nil) {
			dict["eventUrl"] = eventUrl!
		}
		if(webhookRegistrationToken != nil) {
			dict["webhookRegistrationToken"] = webhookRegistrationToken!
		}
		return dict
	}
}

