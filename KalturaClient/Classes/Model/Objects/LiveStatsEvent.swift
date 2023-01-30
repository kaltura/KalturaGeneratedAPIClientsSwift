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
 * This class was generated using generate.php
 * against an XML schema provided by Kaltura.
 * 
 * MANUAL CHANGES TO THIS CLASS WILL BE OVERWRITTEN.
 */

/**  Will hold data from the Kaltura Player components to be passed on to the live
  analytics system  */
open class LiveStatsEvent: ObjectBase {

	public class LiveStatsEventTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var partnerId: BaseTokenizedObject {
			get {
				return self.append("partnerId") 
			}
		}
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
		
		public var eventType: BaseTokenizedObject {
			get {
				return self.append("eventType") 
			}
		}
		
		public var sessionId: BaseTokenizedObject {
			get {
				return self.append("sessionId") 
			}
		}
		
		public var eventIndex: BaseTokenizedObject {
			get {
				return self.append("eventIndex") 
			}
		}
		
		public var bufferTime: BaseTokenizedObject {
			get {
				return self.append("bufferTime") 
			}
		}
		
		public var bitrate: BaseTokenizedObject {
			get {
				return self.append("bitrate") 
			}
		}
		
		public var referrer: BaseTokenizedObject {
			get {
				return self.append("referrer") 
			}
		}
		
		public var isLive: BaseTokenizedObject {
			get {
				return self.append("isLive") 
			}
		}
		
		public var startTime: BaseTokenizedObject {
			get {
				return self.append("startTime") 
			}
		}
		
		public var deliveryType: BaseTokenizedObject {
			get {
				return self.append("deliveryType") 
			}
		}
	}

	public var partnerId: Int? = nil
	public var entryId: String? = nil
	/**  an integer representing the type of event being sent from the player  */
	public var eventType: LiveStatsEventType? = nil
	/**  a unique string generated by the client that will represent the client-side
	  session: the primary component will pass it on to other components that sprout
	  from it  */
	public var sessionId: String? = nil
	/**  incremental sequence of the event  */
	public var eventIndex: Int? = nil
	/**  buffer time in seconds from the last 10 seconds  */
	public var bufferTime: Int? = nil
	/**  bitrate used in the last 10 seconds  */
	public var bitrate: Int? = nil
	/**  the referrer of the client  */
	public var referrer: String? = nil
	public var isLive: Bool? = nil
	/**  the event start time as string  */
	public var startTime: String? = nil
	/**  delivery type used for this stream  */
	public var deliveryType: PlaybackProtocol? = nil


	public func setMultiRequestToken(partnerId: String) {
		self.dict["partnerId"] = partnerId
	}
	
	public func setMultiRequestToken(entryId: String) {
		self.dict["entryId"] = entryId
	}
	
	public func setMultiRequestToken(eventType: String) {
		self.dict["eventType"] = eventType
	}
	
	public func setMultiRequestToken(sessionId: String) {
		self.dict["sessionId"] = sessionId
	}
	
	public func setMultiRequestToken(eventIndex: String) {
		self.dict["eventIndex"] = eventIndex
	}
	
	public func setMultiRequestToken(bufferTime: String) {
		self.dict["bufferTime"] = bufferTime
	}
	
	public func setMultiRequestToken(bitrate: String) {
		self.dict["bitrate"] = bitrate
	}
	
	public func setMultiRequestToken(referrer: String) {
		self.dict["referrer"] = referrer
	}
	
	public func setMultiRequestToken(isLive: String) {
		self.dict["isLive"] = isLive
	}
	
	public func setMultiRequestToken(startTime: String) {
		self.dict["startTime"] = startTime
	}
	
	public func setMultiRequestToken(deliveryType: String) {
		self.dict["deliveryType"] = deliveryType
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["partnerId"] != nil {
			partnerId = dict["partnerId"] as? Int
		}
		if dict["entryId"] != nil {
			entryId = dict["entryId"] as? String
		}
		if dict["eventType"] != nil {
			eventType = LiveStatsEventType(rawValue: (dict["eventType"] as? Int)!)
		}
		if dict["sessionId"] != nil {
			sessionId = dict["sessionId"] as? String
		}
		if dict["eventIndex"] != nil {
			eventIndex = dict["eventIndex"] as? Int
		}
		if dict["bufferTime"] != nil {
			bufferTime = dict["bufferTime"] as? Int
		}
		if dict["bitrate"] != nil {
			bitrate = dict["bitrate"] as? Int
		}
		if dict["referrer"] != nil {
			referrer = dict["referrer"] as? String
		}
		if dict["isLive"] != nil {
			isLive = dict["isLive"] as? Bool
		}
		if dict["startTime"] != nil {
			startTime = dict["startTime"] as? String
		}
		if dict["deliveryType"] != nil {
			deliveryType = PlaybackProtocol(rawValue: "\(dict["deliveryType"]!)")
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(partnerId != nil) {
			dict["partnerId"] = partnerId!
		}
		if(entryId != nil) {
			dict["entryId"] = entryId!
		}
		if(eventType != nil) {
			dict["eventType"] = eventType!.rawValue
		}
		if(sessionId != nil) {
			dict["sessionId"] = sessionId!
		}
		if(eventIndex != nil) {
			dict["eventIndex"] = eventIndex!
		}
		if(bufferTime != nil) {
			dict["bufferTime"] = bufferTime!
		}
		if(bitrate != nil) {
			dict["bitrate"] = bitrate!
		}
		if(referrer != nil) {
			dict["referrer"] = referrer!
		}
		if(isLive != nil) {
			dict["isLive"] = isLive!
		}
		if(startTime != nil) {
			dict["startTime"] = startTime!
		}
		if(deliveryType != nil) {
			dict["deliveryType"] = deliveryType!.rawValue
		}
		return dict
	}
}

