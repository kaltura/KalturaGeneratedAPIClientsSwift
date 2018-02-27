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
// Copyright (C) 2006-2018  Kaltura Inc.
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

open class LiveChannelSegment: ObjectBase {

	public class LiveChannelSegmentTokenizer: ObjectBase.ObjectBaseTokenizer {
		
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
		
		public var tags: BaseTokenizedObject {
			get {
				return self.append("tags") 
			}
		}
		
		public var type: BaseTokenizedObject {
			get {
				return self.append("type") 
			}
		}
		
		public var status: BaseTokenizedObject {
			get {
				return self.append("status") 
			}
		}
		
		public var channelId: BaseTokenizedObject {
			get {
				return self.append("channelId") 
			}
		}
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
		
		public var triggerType: BaseTokenizedObject {
			get {
				return self.append("triggerType") 
			}
		}
		
		public var triggerSegmentId: BaseTokenizedObject {
			get {
				return self.append("triggerSegmentId") 
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
	}

	/**  Unique identifier  */
	public var id: Int64? = nil
	public var partnerId: Int? = nil
	/**  Segment creation date as Unix timestamp (In seconds)  */
	public var createdAt: Int? = nil
	/**  Segment update date as Unix timestamp (In seconds)  */
	public var updatedAt: Int? = nil
	/**  Segment name  */
	public var name: String? = nil
	/**  Segment description  */
	public var description: String? = nil
	/**  Segment tags  */
	public var tags: String? = nil
	/**  Segment could be associated with the main stream, as additional stream or as
	  overlay  */
	public var type: LiveChannelSegmentType? = nil
	public var status: LiveChannelSegmentStatus? = nil
	/**  Live channel id  */
	public var channelId: String? = nil
	/**  Entry id to be played  */
	public var entryId: String? = nil
	/**  Segment start time trigger type  */
	public var triggerType: LiveChannelSegmentTriggerType? = nil
	/**  Live channel segment that the trigger relates to  */
	public var triggerSegmentId: Int64? = nil
	/**  Segment play start time, in mili-seconds, according to trigger type  */
	public var startTime: Double? = nil
	/**  Segment play duration time, in mili-seconds  */
	public var duration: Double? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
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
	
	public func setMultiRequestToken(name: String) {
		self.dict["name"] = name
	}
	
	public func setMultiRequestToken(description: String) {
		self.dict["description"] = description
	}
	
	public func setMultiRequestToken(tags: String) {
		self.dict["tags"] = tags
	}
	
	public func setMultiRequestToken(type: String) {
		self.dict["type"] = type
	}
	
	public func setMultiRequestToken(status: String) {
		self.dict["status"] = status
	}
	
	public func setMultiRequestToken(channelId: String) {
		self.dict["channelId"] = channelId
	}
	
	public func setMultiRequestToken(entryId: String) {
		self.dict["entryId"] = entryId
	}
	
	public func setMultiRequestToken(triggerType: String) {
		self.dict["triggerType"] = triggerType
	}
	
	public func setMultiRequestToken(triggerSegmentId: String) {
		self.dict["triggerSegmentId"] = triggerSegmentId
	}
	
	public func setMultiRequestToken(startTime: String) {
		self.dict["startTime"] = startTime
	}
	
	public func setMultiRequestToken(duration: String) {
		self.dict["duration"] = duration
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = Int64("\(dict["id"]!)")
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
		if dict["name"] != nil {
			name = dict["name"] as? String
		}
		if dict["description"] != nil {
			description = dict["description"] as? String
		}
		if dict["tags"] != nil {
			tags = dict["tags"] as? String
		}
		if dict["type"] != nil {
			type = LiveChannelSegmentType(rawValue: "\(dict["type"]!)")
		}
		if dict["status"] != nil {
			status = LiveChannelSegmentStatus(rawValue: "\(dict["status"]!)")
		}
		if dict["channelId"] != nil {
			channelId = dict["channelId"] as? String
		}
		if dict["entryId"] != nil {
			entryId = dict["entryId"] as? String
		}
		if dict["triggerType"] != nil {
			triggerType = LiveChannelSegmentTriggerType(rawValue: "\(dict["triggerType"]!)")
		}
		if dict["triggerSegmentId"] != nil {
			triggerSegmentId = Int64("\(dict["triggerSegmentId"]!)")
		}
		if dict["startTime"] != nil {
			startTime = dict["startTime"] as? Double
		}
		if dict["duration"] != nil {
			duration = dict["duration"] as? Double
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
		if(type != nil) {
			dict["type"] = type!.rawValue
		}
		if(channelId != nil) {
			dict["channelId"] = channelId!
		}
		if(entryId != nil) {
			dict["entryId"] = entryId!
		}
		if(triggerType != nil) {
			dict["triggerType"] = triggerType!.rawValue
		}
		if(triggerSegmentId != nil) {
			dict["triggerSegmentId"] = triggerSegmentId!
		}
		if(startTime != nil) {
			dict["startTime"] = startTime!
		}
		if(duration != nil) {
			dict["duration"] = duration!
		}
		return dict
	}
}

