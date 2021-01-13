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
// Copyright (C) 2006-2021  Kaltura Inc.
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

open class BusinessProcessCase: ObjectBase {

	public class BusinessProcessCaseTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var businessProcessId: BaseTokenizedObject {
			get {
				return self.append("businessProcessId") 
			}
		}
		
		public var businessProcessStartNotificationTemplateId: BaseTokenizedObject {
			get {
				return self.append("businessProcessStartNotificationTemplateId") 
			}
		}
		
		public var suspended: BaseTokenizedObject {
			get {
				return self.append("suspended") 
			}
		}
		
		public var activityId: BaseTokenizedObject {
			get {
				return self.append("activityId") 
			}
		}
	}

	public var id: String? = nil
	public var businessProcessId: String? = nil
	public var businessProcessStartNotificationTemplateId: Int? = nil
	public var suspended: Bool? = nil
	public var activityId: String? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(businessProcessId: String) {
		self.dict["businessProcessId"] = businessProcessId
	}
	
	public func setMultiRequestToken(businessProcessStartNotificationTemplateId: String) {
		self.dict["businessProcessStartNotificationTemplateId"] = businessProcessStartNotificationTemplateId
	}
	
	public func setMultiRequestToken(suspended: String) {
		self.dict["suspended"] = suspended
	}
	
	public func setMultiRequestToken(activityId: String) {
		self.dict["activityId"] = activityId
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = dict["id"] as? String
		}
		if dict["businessProcessId"] != nil {
			businessProcessId = dict["businessProcessId"] as? String
		}
		if dict["businessProcessStartNotificationTemplateId"] != nil {
			businessProcessStartNotificationTemplateId = dict["businessProcessStartNotificationTemplateId"] as? Int
		}
		if dict["suspended"] != nil {
			suspended = dict["suspended"] as? Bool
		}
		if dict["activityId"] != nil {
			activityId = dict["activityId"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(id != nil) {
			dict["id"] = id!
		}
		if(businessProcessId != nil) {
			dict["businessProcessId"] = businessProcessId!
		}
		if(businessProcessStartNotificationTemplateId != nil) {
			dict["businessProcessStartNotificationTemplateId"] = businessProcessStartNotificationTemplateId!
		}
		if(suspended != nil) {
			dict["suspended"] = suspended!
		}
		if(activityId != nil) {
			dict["activityId"] = activityId!
		}
		return dict
	}
}

