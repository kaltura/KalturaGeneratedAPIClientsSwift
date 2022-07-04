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

open class ScheduleEventResource: ObjectBase {

	public class ScheduleEventResourceTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var eventId: BaseTokenizedObject {
			get {
				return self.append("eventId") 
			}
		}
		
		public var resourceId: BaseTokenizedObject {
			get {
				return self.append("resourceId") 
			}
		}
		
		public var partnerId: BaseTokenizedObject {
			get {
				return self.append("partnerId") 
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

	public var eventId: Int? = nil
	public var resourceId: Int? = nil
	public var partnerId: Int? = nil
	/**  Creation date as Unix timestamp (In seconds)  */
	public var createdAt: Int? = nil
	/**  Last update as Unix timestamp (In seconds)  */
	public var updatedAt: Int? = nil


	public func setMultiRequestToken(eventId: String) {
		self.dict["eventId"] = eventId
	}
	
	public func setMultiRequestToken(resourceId: String) {
		self.dict["resourceId"] = resourceId
	}
	
	public func setMultiRequestToken(partnerId: String) {
		self.dict["partnerId"] = partnerId
	}
	
	public func setMultiRequestToken(createdAt: String) {
		self.dict["createdAt"] = createdAt
	}
	
	public func setMultiRequestToken(updatedAt: String) {
		self.dict["updatedAt"] = updatedAt
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["eventId"] != nil {
			eventId = dict["eventId"] as? Int
		}
		if dict["resourceId"] != nil {
			resourceId = dict["resourceId"] as? Int
		}
		if dict["partnerId"] != nil {
			partnerId = dict["partnerId"] as? Int
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
		if(eventId != nil) {
			dict["eventId"] = eventId!
		}
		if(resourceId != nil) {
			dict["resourceId"] = resourceId!
		}
		return dict
	}
}

