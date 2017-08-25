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

open class CuePoint: ObjectBase {

	public class CuePointTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var cuePointType: BaseTokenizedObject {
			get {
				return self.append("cuePointType") 
			}
		}
		
		public var status: BaseTokenizedObject {
			get {
				return self.append("status") 
			}
		}
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
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
		
		public var triggeredAt: BaseTokenizedObject {
			get {
				return self.append("triggeredAt") 
			}
		}
		
		public var tags: BaseTokenizedObject {
			get {
				return self.append("tags") 
			}
		}
		
		public var startTime: BaseTokenizedObject {
			get {
				return self.append("startTime") 
			}
		}
		
		public var userId: BaseTokenizedObject {
			get {
				return self.append("userId") 
			}
		}
		
		public var partnerData: BaseTokenizedObject {
			get {
				return self.append("partnerData") 
			}
		}
		
		public var partnerSortValue: BaseTokenizedObject {
			get {
				return self.append("partnerSortValue") 
			}
		}
		
		public var forceStop: BaseTokenizedObject {
			get {
				return self.append("forceStop") 
			}
		}
		
		public var thumbOffset: BaseTokenizedObject {
			get {
				return self.append("thumbOffset") 
			}
		}
		
		public var systemName: BaseTokenizedObject {
			get {
				return self.append("systemName") 
			}
		}
	}

	public var id: String? = nil
	public var cuePointType: CuePointType? = nil
	public var status: CuePointStatus? = nil
	public var entryId: String? = nil
	public var partnerId: Int? = nil
	public var createdAt: Int? = nil
	public var updatedAt: Int? = nil
	public var triggeredAt: Int? = nil
	public var tags: String? = nil
	/**  Start time in milliseconds  */
	public var startTime: Int? = nil
	public var userId: String? = nil
	public var partnerData: String? = nil
	public var partnerSortValue: Int? = nil
	public var forceStop: Bool? = nil
	public var thumbOffset: Int? = nil
	public var systemName: String? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(cuePointType: String) {
		self.dict["cuePointType"] = cuePointType
	}
	
	public func setMultiRequestToken(status: String) {
		self.dict["status"] = status
	}
	
	public func setMultiRequestToken(entryId: String) {
		self.dict["entryId"] = entryId
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
	
	public func setMultiRequestToken(triggeredAt: String) {
		self.dict["triggeredAt"] = triggeredAt
	}
	
	public func setMultiRequestToken(tags: String) {
		self.dict["tags"] = tags
	}
	
	public func setMultiRequestToken(startTime: String) {
		self.dict["startTime"] = startTime
	}
	
	public func setMultiRequestToken(userId: String) {
		self.dict["userId"] = userId
	}
	
	public func setMultiRequestToken(partnerData: String) {
		self.dict["partnerData"] = partnerData
	}
	
	public func setMultiRequestToken(partnerSortValue: String) {
		self.dict["partnerSortValue"] = partnerSortValue
	}
	
	public func setMultiRequestToken(forceStop: String) {
		self.dict["forceStop"] = forceStop
	}
	
	public func setMultiRequestToken(thumbOffset: String) {
		self.dict["thumbOffset"] = thumbOffset
	}
	
	public func setMultiRequestToken(systemName: String) {
		self.dict["systemName"] = systemName
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = dict["id"] as? String
		}
		if dict["cuePointType"] != nil {
			cuePointType = CuePointType(rawValue: "\(dict["cuePointType"]!)")
		}
		if dict["status"] != nil {
			status = CuePointStatus(rawValue: (dict["status"] as? Int)!)
		}
		if dict["entryId"] != nil {
			entryId = dict["entryId"] as? String
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
		if dict["triggeredAt"] != nil {
			triggeredAt = dict["triggeredAt"] as? Int
		}
		if dict["tags"] != nil {
			tags = dict["tags"] as? String
		}
		if dict["startTime"] != nil {
			startTime = dict["startTime"] as? Int
		}
		if dict["userId"] != nil {
			userId = dict["userId"] as? String
		}
		if dict["partnerData"] != nil {
			partnerData = dict["partnerData"] as? String
		}
		if dict["partnerSortValue"] != nil {
			partnerSortValue = dict["partnerSortValue"] as? Int
		}
		if dict["forceStop"] != nil {
			forceStop = dict["forceStop"] as? Bool
		}
		if dict["thumbOffset"] != nil {
			thumbOffset = dict["thumbOffset"] as? Int
		}
		if dict["systemName"] != nil {
			systemName = dict["systemName"] as? String
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(entryId != nil) {
			dict["entryId"] = entryId!
		}
		if(triggeredAt != nil) {
			dict["triggeredAt"] = triggeredAt!
		}
		if(tags != nil) {
			dict["tags"] = tags!
		}
		if(startTime != nil) {
			dict["startTime"] = startTime!
		}
		if(partnerData != nil) {
			dict["partnerData"] = partnerData!
		}
		if(partnerSortValue != nil) {
			dict["partnerSortValue"] = partnerSortValue!
		}
		if(forceStop != nil) {
			dict["forceStop"] = forceStop!
		}
		if(thumbOffset != nil) {
			dict["thumbOffset"] = thumbOffset!
		}
		if(systemName != nil) {
			dict["systemName"] = systemName!
		}
		return dict
	}
}

