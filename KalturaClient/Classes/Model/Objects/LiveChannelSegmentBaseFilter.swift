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

open class LiveChannelSegmentBaseFilter: RelatedFilter {

	public class LiveChannelSegmentBaseFilterTokenizer: RelatedFilter.RelatedFilterTokenizer {
		
		public var createdAtGreaterThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("createdAtGreaterThanOrEqual") 
			}
		}
		
		public var createdAtLessThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("createdAtLessThanOrEqual") 
			}
		}
		
		public var updatedAtGreaterThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("updatedAtGreaterThanOrEqual") 
			}
		}
		
		public var updatedAtLessThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("updatedAtLessThanOrEqual") 
			}
		}
		
		public var statusEqual: BaseTokenizedObject {
			get {
				return self.append("statusEqual") 
			}
		}
		
		public var statusIn: BaseTokenizedObject {
			get {
				return self.append("statusIn") 
			}
		}
		
		public var channelIdEqual: BaseTokenizedObject {
			get {
				return self.append("channelIdEqual") 
			}
		}
		
		public var channelIdIn: BaseTokenizedObject {
			get {
				return self.append("channelIdIn") 
			}
		}
		
		public var startTimeGreaterThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("startTimeGreaterThanOrEqual") 
			}
		}
		
		public var startTimeLessThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("startTimeLessThanOrEqual") 
			}
		}
	}

	public var createdAtGreaterThanOrEqual: Int? = nil
	public var createdAtLessThanOrEqual: Int? = nil
	public var updatedAtGreaterThanOrEqual: Int? = nil
	public var updatedAtLessThanOrEqual: Int? = nil
	public var statusEqual: LiveChannelSegmentStatus? = nil
	public var statusIn: String? = nil
	public var channelIdEqual: String? = nil
	public var channelIdIn: String? = nil
	public var startTimeGreaterThanOrEqual: Double? = nil
	public var startTimeLessThanOrEqual: Double? = nil


	public func setMultiRequestToken(createdAtGreaterThanOrEqual: String) {
		self.dict["createdAtGreaterThanOrEqual"] = createdAtGreaterThanOrEqual
	}
	
	public func setMultiRequestToken(createdAtLessThanOrEqual: String) {
		self.dict["createdAtLessThanOrEqual"] = createdAtLessThanOrEqual
	}
	
	public func setMultiRequestToken(updatedAtGreaterThanOrEqual: String) {
		self.dict["updatedAtGreaterThanOrEqual"] = updatedAtGreaterThanOrEqual
	}
	
	public func setMultiRequestToken(updatedAtLessThanOrEqual: String) {
		self.dict["updatedAtLessThanOrEqual"] = updatedAtLessThanOrEqual
	}
	
	public func setMultiRequestToken(statusEqual: String) {
		self.dict["statusEqual"] = statusEqual
	}
	
	public func setMultiRequestToken(statusIn: String) {
		self.dict["statusIn"] = statusIn
	}
	
	public func setMultiRequestToken(channelIdEqual: String) {
		self.dict["channelIdEqual"] = channelIdEqual
	}
	
	public func setMultiRequestToken(channelIdIn: String) {
		self.dict["channelIdIn"] = channelIdIn
	}
	
	public func setMultiRequestToken(startTimeGreaterThanOrEqual: String) {
		self.dict["startTimeGreaterThanOrEqual"] = startTimeGreaterThanOrEqual
	}
	
	public func setMultiRequestToken(startTimeLessThanOrEqual: String) {
		self.dict["startTimeLessThanOrEqual"] = startTimeLessThanOrEqual
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["createdAtGreaterThanOrEqual"] != nil {
			createdAtGreaterThanOrEqual = dict["createdAtGreaterThanOrEqual"] as? Int
		}
		if dict["createdAtLessThanOrEqual"] != nil {
			createdAtLessThanOrEqual = dict["createdAtLessThanOrEqual"] as? Int
		}
		if dict["updatedAtGreaterThanOrEqual"] != nil {
			updatedAtGreaterThanOrEqual = dict["updatedAtGreaterThanOrEqual"] as? Int
		}
		if dict["updatedAtLessThanOrEqual"] != nil {
			updatedAtLessThanOrEqual = dict["updatedAtLessThanOrEqual"] as? Int
		}
		if dict["statusEqual"] != nil {
			statusEqual = LiveChannelSegmentStatus(rawValue: "\(dict["statusEqual"]!)")
		}
		if dict["statusIn"] != nil {
			statusIn = dict["statusIn"] as? String
		}
		if dict["channelIdEqual"] != nil {
			channelIdEqual = dict["channelIdEqual"] as? String
		}
		if dict["channelIdIn"] != nil {
			channelIdIn = dict["channelIdIn"] as? String
		}
		if dict["startTimeGreaterThanOrEqual"] != nil {
			startTimeGreaterThanOrEqual = dict["startTimeGreaterThanOrEqual"] as? Double
		}
		if dict["startTimeLessThanOrEqual"] != nil {
			startTimeLessThanOrEqual = dict["startTimeLessThanOrEqual"] as? Double
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(createdAtGreaterThanOrEqual != nil) {
			dict["createdAtGreaterThanOrEqual"] = createdAtGreaterThanOrEqual!
		}
		if(createdAtLessThanOrEqual != nil) {
			dict["createdAtLessThanOrEqual"] = createdAtLessThanOrEqual!
		}
		if(updatedAtGreaterThanOrEqual != nil) {
			dict["updatedAtGreaterThanOrEqual"] = updatedAtGreaterThanOrEqual!
		}
		if(updatedAtLessThanOrEqual != nil) {
			dict["updatedAtLessThanOrEqual"] = updatedAtLessThanOrEqual!
		}
		if(statusEqual != nil) {
			dict["statusEqual"] = statusEqual!.rawValue
		}
		if(statusIn != nil) {
			dict["statusIn"] = statusIn!
		}
		if(channelIdEqual != nil) {
			dict["channelIdEqual"] = channelIdEqual!
		}
		if(channelIdIn != nil) {
			dict["channelIdIn"] = channelIdIn!
		}
		if(startTimeGreaterThanOrEqual != nil) {
			dict["startTimeGreaterThanOrEqual"] = startTimeGreaterThanOrEqual!
		}
		if(startTimeLessThanOrEqual != nil) {
			dict["startTimeLessThanOrEqual"] = startTimeLessThanOrEqual!
		}
		return dict
	}
}

