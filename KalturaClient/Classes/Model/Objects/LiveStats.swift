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
// Copyright (C) 2006-2019  Kaltura Inc.
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

open class LiveStats: ObjectBase {

	public class LiveStatsTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var audience: BaseTokenizedObject {
			get {
				return self.append("audience") 
			}
		}
		
		public var dvrAudience: BaseTokenizedObject {
			get {
				return self.append("dvrAudience") 
			}
		}
		
		public var avgBitrate: BaseTokenizedObject {
			get {
				return self.append("avgBitrate") 
			}
		}
		
		public var bufferTime: BaseTokenizedObject {
			get {
				return self.append("bufferTime") 
			}
		}
		
		public var plays: BaseTokenizedObject {
			get {
				return self.append("plays") 
			}
		}
		
		public var secondsViewed: BaseTokenizedObject {
			get {
				return self.append("secondsViewed") 
			}
		}
		
		public var startEvent: BaseTokenizedObject {
			get {
				return self.append("startEvent") 
			}
		}
		
		public var timestamp: BaseTokenizedObject {
			get {
				return self.append("timestamp") 
			}
		}
	}

	public var audience: Int? = nil
	public var dvrAudience: Int? = nil
	public var avgBitrate: Double? = nil
	public var bufferTime: Int? = nil
	public var plays: Int? = nil
	public var secondsViewed: Int? = nil
	public var startEvent: Int64? = nil
	public var timestamp: Int? = nil


	public func setMultiRequestToken(audience: String) {
		self.dict["audience"] = audience
	}
	
	public func setMultiRequestToken(dvrAudience: String) {
		self.dict["dvrAudience"] = dvrAudience
	}
	
	public func setMultiRequestToken(avgBitrate: String) {
		self.dict["avgBitrate"] = avgBitrate
	}
	
	public func setMultiRequestToken(bufferTime: String) {
		self.dict["bufferTime"] = bufferTime
	}
	
	public func setMultiRequestToken(plays: String) {
		self.dict["plays"] = plays
	}
	
	public func setMultiRequestToken(secondsViewed: String) {
		self.dict["secondsViewed"] = secondsViewed
	}
	
	public func setMultiRequestToken(startEvent: String) {
		self.dict["startEvent"] = startEvent
	}
	
	public func setMultiRequestToken(timestamp: String) {
		self.dict["timestamp"] = timestamp
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["audience"] != nil {
			audience = dict["audience"] as? Int
		}
		if dict["dvrAudience"] != nil {
			dvrAudience = dict["dvrAudience"] as? Int
		}
		if dict["avgBitrate"] != nil {
			avgBitrate = dict["avgBitrate"] as? Double
		}
		if dict["bufferTime"] != nil {
			bufferTime = dict["bufferTime"] as? Int
		}
		if dict["plays"] != nil {
			plays = dict["plays"] as? Int
		}
		if dict["secondsViewed"] != nil {
			secondsViewed = dict["secondsViewed"] as? Int
		}
		if dict["startEvent"] != nil {
			startEvent = Int64("\(dict["startEvent"]!)")
		}
		if dict["timestamp"] != nil {
			timestamp = dict["timestamp"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(audience != nil) {
			dict["audience"] = audience!
		}
		if(dvrAudience != nil) {
			dict["dvrAudience"] = dvrAudience!
		}
		if(avgBitrate != nil) {
			dict["avgBitrate"] = avgBitrate!
		}
		if(bufferTime != nil) {
			dict["bufferTime"] = bufferTime!
		}
		if(plays != nil) {
			dict["plays"] = plays!
		}
		if(secondsViewed != nil) {
			dict["secondsViewed"] = secondsViewed!
		}
		if(startEvent != nil) {
			dict["startEvent"] = startEvent!
		}
		if(timestamp != nil) {
			dict["timestamp"] = timestamp!
		}
		return dict
	}
}

