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

open class EventNotificationTemplate: ObjectBase {

	public var id: Int? = nil
	public var partnerId: Int? = nil
	public var name: String? = nil
	public var systemName: String? = nil
	public var description: String? = nil
	public var type: EventNotificationTemplateType? = nil
	public var status: EventNotificationTemplateStatus? = nil
	public var createdAt: Int? = nil
	public var updatedAt: Int? = nil
	/**  Define that the template could be dispatched manually from the API  */
	public var manualDispatchEnabled: Bool? = nil
	/**  Define that the template could be dispatched automatically by the system  */
	public var automaticDispatchEnabled: Bool? = nil
	/**  Define the event that should trigger this notification  */
	public var eventType: EventNotificationEventType? = nil
	/**  Define the object that raied the event that should trigger this notification  */
	public var eventObjectType: EventNotificationEventObjectType? = nil
	/**  Define the conditions that cause this notification to be triggered  */
	public var eventConditions: Array<Condition>? = nil
	/**  Define the content dynamic parameters  */
	public var contentParameters: Array<EventNotificationParameter>? = nil
	/**  Define the content dynamic parameters  */
	public var userParameters: Array<EventNotificationParameter>? = nil


	internal override func populate(_ dict: [String: Any]) throws {
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
		if dict["systemName"] != nil {
			systemName = dict["systemName"] as? String
		}
		if dict["description"] != nil {
			description = dict["description"] as? String
		}
		if dict["type"] != nil {
			type = EventNotificationTemplateType(rawValue: "\(dict["type"]!)")
		}
		if dict["status"] != nil {
			status = EventNotificationTemplateStatus(rawValue: (dict["status"] as? Int)!)
		}
		if dict["createdAt"] != nil {
			createdAt = dict["createdAt"] as? Int
		}
		if dict["updatedAt"] != nil {
			updatedAt = dict["updatedAt"] as? Int
		}
		if dict["manualDispatchEnabled"] != nil {
			manualDispatchEnabled = dict["manualDispatchEnabled"] as? Bool
		}
		if dict["automaticDispatchEnabled"] != nil {
			automaticDispatchEnabled = dict["automaticDispatchEnabled"] as? Bool
		}
		if dict["eventType"] != nil {
			eventType = EventNotificationEventType(rawValue: "\(dict["eventType"]!)")
		}
		if dict["eventObjectType"] != nil {
			eventObjectType = EventNotificationEventObjectType(rawValue: "\(dict["eventObjectType"]!)")
		}
		if dict["eventConditions"] != nil {
			eventConditions = try JSONParser.parse(array: dict["eventConditions"] as! [Any])
		}
		if dict["contentParameters"] != nil {
			contentParameters = try JSONParser.parse(array: dict["contentParameters"] as! [Any])
		}
		if dict["userParameters"] != nil {
			userParameters = try JSONParser.parse(array: dict["userParameters"] as! [Any])
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(name != nil) {
			dict["name"] = name!
		}
		if(systemName != nil) {
			dict["systemName"] = systemName!
		}
		if(description != nil) {
			dict["description"] = description!
		}
		if(type != nil) {
			dict["type"] = type!.rawValue
		}
		if(manualDispatchEnabled != nil) {
			dict["manualDispatchEnabled"] = manualDispatchEnabled!
		}
		if(automaticDispatchEnabled != nil) {
			dict["automaticDispatchEnabled"] = automaticDispatchEnabled!
		}
		if(eventType != nil) {
			dict["eventType"] = eventType!.rawValue
		}
		if(eventObjectType != nil) {
			dict["eventObjectType"] = eventObjectType!.rawValue
		}
		if(eventConditions != nil) {
			dict["eventConditions"] = eventConditions!.map { value in value.toDictionary() }
		}
		if(contentParameters != nil) {
			dict["contentParameters"] = contentParameters!.map { value in value.toDictionary() }
		}
		if(userParameters != nil) {
			dict["userParameters"] = userParameters!.map { value in value.toDictionary() }
		}
		return dict
	}
}

