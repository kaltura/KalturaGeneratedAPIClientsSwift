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

open class ScheduleEvent: ObjectBase {

	/**  Auto-generated unique identifier  */
	public var id: Int? = nil
	public var partnerId: Int? = nil
	public var parentId: Int? = nil
	/**  Defines a short summary or subject for the event  */
	public var summary: String? = nil
	public var description: String? = nil
	public var status: ScheduleEventStatus? = nil
	public var startDate: Int? = nil
	public var endDate: Int? = nil
	public var referenceId: String? = nil
	public var classificationType: ScheduleEventClassificationType? = nil
	/**  Specifies the global position for the activity  */
	public var geoLatitude: Double? = nil
	/**  Specifies the global position for the activity  */
	public var geoLongitude: Double? = nil
	/**  Defines the intended venue for the activity  */
	public var location: String? = nil
	public var organizer: String? = nil
	public var ownerId: String? = nil
	/**  The value for the priority field.  */
	public var priority: Int? = nil
	/**  Defines the revision sequence number.  */
	public var sequence: Int? = nil
	public var recurrenceType: ScheduleEventRecurrenceType? = nil
	/**  Duration in seconds  */
	public var duration: Int? = nil
	/**  Used to represent contact information or alternately a reference to contact
	  information.  */
	public var contact: String? = nil
	/**  Specifies non-processing information intended to provide a comment to the
	  calendar user.  */
	public var comment: String? = nil
	public var tags: String? = nil
	/**  Creation date as Unix timestamp (In seconds)  */
	public var createdAt: Int? = nil
	/**  Last update as Unix timestamp (In seconds)  */
	public var updatedAt: Int? = nil
	public var recurrence: ScheduleEventRecurrence? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = dict["id"] as? Int
		}
		if dict["partnerId"] != nil {
			partnerId = dict["partnerId"] as? Int
		}
		if dict["parentId"] != nil {
			parentId = dict["parentId"] as? Int
		}
		if dict["summary"] != nil {
			summary = dict["summary"] as? String
		}
		if dict["description"] != nil {
			description = dict["description"] as? String
		}
		if dict["status"] != nil {
			status = ScheduleEventStatus(rawValue: (dict["status"] as? Int)!)
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
		if dict["classificationType"] != nil {
			classificationType = ScheduleEventClassificationType(rawValue: (dict["classificationType"] as? Int)!)
		}
		if dict["geoLatitude"] != nil {
			geoLatitude = dict["geoLatitude"] as? Double
		}
		if dict["geoLongitude"] != nil {
			geoLongitude = dict["geoLongitude"] as? Double
		}
		if dict["location"] != nil {
			location = dict["location"] as? String
		}
		if dict["organizer"] != nil {
			organizer = dict["organizer"] as? String
		}
		if dict["ownerId"] != nil {
			ownerId = dict["ownerId"] as? String
		}
		if dict["priority"] != nil {
			priority = dict["priority"] as? Int
		}
		if dict["sequence"] != nil {
			sequence = dict["sequence"] as? Int
		}
		if dict["recurrenceType"] != nil {
			recurrenceType = ScheduleEventRecurrenceType(rawValue: (dict["recurrenceType"] as? Int)!)
		}
		if dict["duration"] != nil {
			duration = dict["duration"] as? Int
		}
		if dict["contact"] != nil {
			contact = dict["contact"] as? String
		}
		if dict["comment"] != nil {
			comment = dict["comment"] as? String
		}
		if dict["tags"] != nil {
			tags = dict["tags"] as? String
		}
		if dict["createdAt"] != nil {
			createdAt = dict["createdAt"] as? Int
		}
		if dict["updatedAt"] != nil {
			updatedAt = dict["updatedAt"] as? Int
		}
		if dict["recurrence"] != nil {
		recurrence = try JSONParser.parse(object: dict["recurrence"] as! [String: Any])		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(summary != nil) {
			dict["summary"] = summary!
		}
		if(description != nil) {
			dict["description"] = description!
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
		if(classificationType != nil) {
			dict["classificationType"] = classificationType!.rawValue
		}
		if(geoLatitude != nil) {
			dict["geoLatitude"] = geoLatitude!
		}
		if(geoLongitude != nil) {
			dict["geoLongitude"] = geoLongitude!
		}
		if(location != nil) {
			dict["location"] = location!
		}
		if(organizer != nil) {
			dict["organizer"] = organizer!
		}
		if(ownerId != nil) {
			dict["ownerId"] = ownerId!
		}
		if(priority != nil) {
			dict["priority"] = priority!
		}
		if(sequence != nil) {
			dict["sequence"] = sequence!
		}
		if(recurrenceType != nil) {
			dict["recurrenceType"] = recurrenceType!.rawValue
		}
		if(duration != nil) {
			dict["duration"] = duration!
		}
		if(contact != nil) {
			dict["contact"] = contact!
		}
		if(comment != nil) {
			dict["comment"] = comment!
		}
		if(tags != nil) {
			dict["tags"] = tags!
		}
		if(recurrence != nil) {
			dict["recurrence"] = recurrence!.toDictionary()
		}
		return dict
	}
}

