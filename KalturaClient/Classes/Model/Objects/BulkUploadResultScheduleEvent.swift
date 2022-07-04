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

open class BulkUploadResultScheduleEvent: BulkUploadResult {

	public class BulkUploadResultScheduleEventTokenizer: BulkUploadResult.BulkUploadResultTokenizer {
		
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
		
		public var eventType: BaseTokenizedObject {
			get {
				return self.append("eventType") 
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
		
		public var categoryIds: BaseTokenizedObject {
			get {
				return self.append("categoryIds") 
			}
		}
		
		public var resourceId: BaseTokenizedObject {
			get {
				return self.append("resourceId") 
			}
		}
		
		public var startTime: BaseTokenizedObject {
			get {
				return self.append("startTime") 
			}
		}
		
		public var duration: BaseTokenizedObject {
			get {
				return self.append("duration") 
			}
		}
		
		public var endTime: BaseTokenizedObject {
			get {
				return self.append("endTime") 
			}
		}
		
		public var recurrence: BaseTokenizedObject {
			get {
				return self.append("recurrence") 
			}
		}
		
		public var coEditors: BaseTokenizedObject {
			get {
				return self.append("coEditors") 
			}
		}
		
		public var coPublishers: BaseTokenizedObject {
			get {
				return self.append("coPublishers") 
			}
		}
		
		public var eventOrganizerId: BaseTokenizedObject {
			get {
				return self.append("eventOrganizerId") 
			}
		}
		
		public var contentOwnerId: BaseTokenizedObject {
			get {
				return self.append("contentOwnerId") 
			}
		}
		
		public var templateEntryType: BaseTokenizedObject {
			get {
				return self.append("templateEntryType") 
			}
		}
	}

	public var referenceId: String? = nil
	public var templateEntryId: String? = nil
	public var eventType: Int? = nil
	public var title: String? = nil
	public var description: String? = nil
	public var tags: String? = nil
	public var categoryIds: String? = nil
	/**  ID of the resource specified for the new event.  */
	public var resourceId: String? = nil
	public var startTime: Int? = nil
	public var duration: Int? = nil
	public var endTime: Int? = nil
	public var recurrence: String? = nil
	public var coEditors: String? = nil
	public var coPublishers: String? = nil
	public var eventOrganizerId: String? = nil
	public var contentOwnerId: String? = nil
	public var templateEntryType: String? = nil


	public func setMultiRequestToken(referenceId: String) {
		self.dict["referenceId"] = referenceId
	}
	
	public func setMultiRequestToken(templateEntryId: String) {
		self.dict["templateEntryId"] = templateEntryId
	}
	
	public func setMultiRequestToken(eventType: String) {
		self.dict["eventType"] = eventType
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
	
	public func setMultiRequestToken(categoryIds: String) {
		self.dict["categoryIds"] = categoryIds
	}
	
	public func setMultiRequestToken(resourceId: String) {
		self.dict["resourceId"] = resourceId
	}
	
	public func setMultiRequestToken(startTime: String) {
		self.dict["startTime"] = startTime
	}
	
	public func setMultiRequestToken(duration: String) {
		self.dict["duration"] = duration
	}
	
	public func setMultiRequestToken(endTime: String) {
		self.dict["endTime"] = endTime
	}
	
	public func setMultiRequestToken(recurrence: String) {
		self.dict["recurrence"] = recurrence
	}
	
	public func setMultiRequestToken(coEditors: String) {
		self.dict["coEditors"] = coEditors
	}
	
	public func setMultiRequestToken(coPublishers: String) {
		self.dict["coPublishers"] = coPublishers
	}
	
	public func setMultiRequestToken(eventOrganizerId: String) {
		self.dict["eventOrganizerId"] = eventOrganizerId
	}
	
	public func setMultiRequestToken(contentOwnerId: String) {
		self.dict["contentOwnerId"] = contentOwnerId
	}
	
	public func setMultiRequestToken(templateEntryType: String) {
		self.dict["templateEntryType"] = templateEntryType
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["referenceId"] != nil {
			referenceId = dict["referenceId"] as? String
		}
		if dict["templateEntryId"] != nil {
			templateEntryId = dict["templateEntryId"] as? String
		}
		if dict["eventType"] != nil {
			eventType = dict["eventType"] as? Int
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
		if dict["categoryIds"] != nil {
			categoryIds = dict["categoryIds"] as? String
		}
		if dict["resourceId"] != nil {
			resourceId = dict["resourceId"] as? String
		}
		if dict["startTime"] != nil {
			startTime = dict["startTime"] as? Int
		}
		if dict["duration"] != nil {
			duration = dict["duration"] as? Int
		}
		if dict["endTime"] != nil {
			endTime = dict["endTime"] as? Int
		}
		if dict["recurrence"] != nil {
			recurrence = dict["recurrence"] as? String
		}
		if dict["coEditors"] != nil {
			coEditors = dict["coEditors"] as? String
		}
		if dict["coPublishers"] != nil {
			coPublishers = dict["coPublishers"] as? String
		}
		if dict["eventOrganizerId"] != nil {
			eventOrganizerId = dict["eventOrganizerId"] as? String
		}
		if dict["contentOwnerId"] != nil {
			contentOwnerId = dict["contentOwnerId"] as? String
		}
		if dict["templateEntryType"] != nil {
			templateEntryType = dict["templateEntryType"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(referenceId != nil) {
			dict["referenceId"] = referenceId!
		}
		if(templateEntryId != nil) {
			dict["templateEntryId"] = templateEntryId!
		}
		if(eventType != nil) {
			dict["eventType"] = eventType!
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
		if(categoryIds != nil) {
			dict["categoryIds"] = categoryIds!
		}
		if(resourceId != nil) {
			dict["resourceId"] = resourceId!
		}
		if(startTime != nil) {
			dict["startTime"] = startTime!
		}
		if(duration != nil) {
			dict["duration"] = duration!
		}
		if(endTime != nil) {
			dict["endTime"] = endTime!
		}
		if(recurrence != nil) {
			dict["recurrence"] = recurrence!
		}
		if(coEditors != nil) {
			dict["coEditors"] = coEditors!
		}
		if(coPublishers != nil) {
			dict["coPublishers"] = coPublishers!
		}
		if(eventOrganizerId != nil) {
			dict["eventOrganizerId"] = eventOrganizerId!
		}
		if(contentOwnerId != nil) {
			dict["contentOwnerId"] = contentOwnerId!
		}
		if(templateEntryType != nil) {
			dict["templateEntryType"] = templateEntryType!
		}
		return dict
	}
}

