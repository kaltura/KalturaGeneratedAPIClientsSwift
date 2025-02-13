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

open class ZoomMeetingMetadata: ObjectBase {

	public class ZoomMeetingMetadataTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var uuid: BaseTokenizedObject {
			get {
				return self.append("uuid") 
			}
		}
		
		public var meetingId: BaseTokenizedObject {
			get {
				return self.append("meetingId") 
			}
		}
		
		public var accountId: BaseTokenizedObject {
			get {
				return self.append("accountId") 
			}
		}
		
		public var hostId: BaseTokenizedObject {
			get {
				return self.append("hostId") 
			}
		}
		
		public var topic: BaseTokenizedObject {
			get {
				return self.append("topic") 
			}
		}
		
		public var meetingStartTime: BaseTokenizedObject {
			get {
				return self.append("meetingStartTime") 
			}
		}
		
		public var type: BaseTokenizedObject {
			get {
				return self.append("type") 
			}
		}
	}

	public var uuid: String? = nil
	public var meetingId: String? = nil
	public var accountId: String? = nil
	public var hostId: String? = nil
	public var topic: String? = nil
	public var meetingStartTime: String? = nil
	public var type: RecordingType? = nil


	public func setMultiRequestToken(uuid: String) {
		self.dict["uuid"] = uuid
	}
	
	public func setMultiRequestToken(meetingId: String) {
		self.dict["meetingId"] = meetingId
	}
	
	public func setMultiRequestToken(accountId: String) {
		self.dict["accountId"] = accountId
	}
	
	public func setMultiRequestToken(hostId: String) {
		self.dict["hostId"] = hostId
	}
	
	public func setMultiRequestToken(topic: String) {
		self.dict["topic"] = topic
	}
	
	public func setMultiRequestToken(meetingStartTime: String) {
		self.dict["meetingStartTime"] = meetingStartTime
	}
	
	public func setMultiRequestToken(type: String) {
		self.dict["type"] = type
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["uuid"] != nil {
			uuid = dict["uuid"] as? String
		}
		if dict["meetingId"] != nil {
			meetingId = dict["meetingId"] as? String
		}
		if dict["accountId"] != nil {
			accountId = dict["accountId"] as? String
		}
		if dict["hostId"] != nil {
			hostId = dict["hostId"] as? String
		}
		if dict["topic"] != nil {
			topic = dict["topic"] as? String
		}
		if dict["meetingStartTime"] != nil {
			meetingStartTime = dict["meetingStartTime"] as? String
		}
		if dict["type"] != nil {
			type = RecordingType(rawValue: (dict["type"] as? Int)!)
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(uuid != nil) {
			dict["uuid"] = uuid!
		}
		if(meetingId != nil) {
			dict["meetingId"] = meetingId!
		}
		if(accountId != nil) {
			dict["accountId"] = accountId!
		}
		if(hostId != nil) {
			dict["hostId"] = hostId!
		}
		if(topic != nil) {
			dict["topic"] = topic!
		}
		if(meetingStartTime != nil) {
			dict["meetingStartTime"] = meetingStartTime!
		}
		if(type != nil) {
			dict["type"] = type!.rawValue
		}
		return dict
	}
}

