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

/**  Wrapper for sent notifications  */
open class HttpNotification: ObjectBase {

	public class HttpNotificationTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public func object<T: ObjectBase.ObjectBaseTokenizer>() -> T {
			return T(self.append("object"))
		}
		
		public var eventObjectType: BaseTokenizedObject {
			get {
				return self.append("eventObjectType") 
			}
		}
		
		public var eventNotificationJobId: BaseTokenizedObject {
			get {
				return self.append("eventNotificationJobId") 
			}
		}
		
		public var templateId: BaseTokenizedObject {
			get {
				return self.append("templateId") 
			}
		}
		
		public var templateName: BaseTokenizedObject {
			get {
				return self.append("templateName") 
			}
		}
		
		public var templateSystemName: BaseTokenizedObject {
			get {
				return self.append("templateSystemName") 
			}
		}
		
		public var eventType: BaseTokenizedObject {
			get {
				return self.append("eventType") 
			}
		}
	}

	/**  Object that triggered the notification  */
	public var object: ObjectBase? = nil
	/**  Object type that triggered the notification  */
	public var eventObjectType: EventNotificationEventObjectType? = nil
	/**  ID of the batch job that execute the notification  */
	public var eventNotificationJobId: Int64? = nil
	/**  ID of the template that triggered the notification  */
	public var templateId: Int? = nil
	/**  Name of the template that triggered the notification  */
	public var templateName: String? = nil
	/**  System name of the template that triggered the notification  */
	public var templateSystemName: String? = nil
	/**  Ecent type that triggered the notification  */
	public var eventType: EventNotificationEventType? = nil


	public func setMultiRequestToken(eventObjectType: String) {
		self.dict["eventObjectType"] = eventObjectType
	}
	
	public func setMultiRequestToken(eventNotificationJobId: String) {
		self.dict["eventNotificationJobId"] = eventNotificationJobId
	}
	
	public func setMultiRequestToken(templateId: String) {
		self.dict["templateId"] = templateId
	}
	
	public func setMultiRequestToken(templateName: String) {
		self.dict["templateName"] = templateName
	}
	
	public func setMultiRequestToken(templateSystemName: String) {
		self.dict["templateSystemName"] = templateSystemName
	}
	
	public func setMultiRequestToken(eventType: String) {
		self.dict["eventType"] = eventType
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["object"] != nil {
		object = try JSONParser.parse(object: dict["object"] as! [String: Any])		}
		if dict["eventObjectType"] != nil {
			eventObjectType = EventNotificationEventObjectType(rawValue: "\(dict["eventObjectType"]!)")
		}
		if dict["eventNotificationJobId"] != nil {
			eventNotificationJobId = Int64("\(dict["eventNotificationJobId"]!)")
		}
		if dict["templateId"] != nil {
			templateId = dict["templateId"] as? Int
		}
		if dict["templateName"] != nil {
			templateName = dict["templateName"] as? String
		}
		if dict["templateSystemName"] != nil {
			templateSystemName = dict["templateSystemName"] as? String
		}
		if dict["eventType"] != nil {
			eventType = EventNotificationEventType(rawValue: "\(dict["eventType"]!)")
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(object != nil) {
			dict["object"] = object!.toDictionary()
		}
		if(eventObjectType != nil) {
			dict["eventObjectType"] = eventObjectType!.rawValue
		}
		if(eventNotificationJobId != nil) {
			dict["eventNotificationJobId"] = eventNotificationJobId!
		}
		if(templateId != nil) {
			dict["templateId"] = templateId!
		}
		if(templateName != nil) {
			dict["templateName"] = templateName!
		}
		if(templateSystemName != nil) {
			dict["templateSystemName"] = templateSystemName!
		}
		if(eventType != nil) {
			dict["eventType"] = eventType!.rawValue
		}
		return dict
	}
}

