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

open class TrackEntry: ObjectBase {

	public class TrackEntryTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var trackEventType: BaseTokenizedObject {
			get {
				return self.append("trackEventType") 
			}
		}
		
		public var psVersion: BaseTokenizedObject {
			get {
				return self.append("psVersion") 
			}
		}
		
		public var context: BaseTokenizedObject {
			get {
				return self.append("context") 
			}
		}
		
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
		
		public var hostName: BaseTokenizedObject {
			get {
				return self.append("hostName") 
			}
		}
		
		public var userId: BaseTokenizedObject {
			get {
				return self.append("userId") 
			}
		}
		
		public var changedProperties: BaseTokenizedObject {
			get {
				return self.append("changedProperties") 
			}
		}
		
		public var paramStr1: BaseTokenizedObject {
			get {
				return self.append("paramStr1") 
			}
		}
		
		public var paramStr2: BaseTokenizedObject {
			get {
				return self.append("paramStr2") 
			}
		}
		
		public var paramStr3: BaseTokenizedObject {
			get {
				return self.append("paramStr3") 
			}
		}
		
		public var ks: BaseTokenizedObject {
			get {
				return self.append("ks") 
			}
		}
		
		public var description: BaseTokenizedObject {
			get {
				return self.append("description") 
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
		
		public var userIp: BaseTokenizedObject {
			get {
				return self.append("userIp") 
			}
		}
	}

	public var id: Int? = nil
	public var trackEventType: TrackEntryEventType? = nil
	public var psVersion: String? = nil
	public var context: String? = nil
	public var partnerId: Int? = nil
	public var entryId: String? = nil
	public var hostName: String? = nil
	public var userId: String? = nil
	public var changedProperties: String? = nil
	public var paramStr1: String? = nil
	public var paramStr2: String? = nil
	public var paramStr3: String? = nil
	public var ks: String? = nil
	public var description: String? = nil
	public var createdAt: Int? = nil
	public var updatedAt: Int? = nil
	public var userIp: String? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(trackEventType: String) {
		self.dict["trackEventType"] = trackEventType
	}
	
	public func setMultiRequestToken(psVersion: String) {
		self.dict["psVersion"] = psVersion
	}
	
	public func setMultiRequestToken(context: String) {
		self.dict["context"] = context
	}
	
	public func setMultiRequestToken(partnerId: String) {
		self.dict["partnerId"] = partnerId
	}
	
	public func setMultiRequestToken(entryId: String) {
		self.dict["entryId"] = entryId
	}
	
	public func setMultiRequestToken(hostName: String) {
		self.dict["hostName"] = hostName
	}
	
	public func setMultiRequestToken(userId: String) {
		self.dict["userId"] = userId
	}
	
	public func setMultiRequestToken(changedProperties: String) {
		self.dict["changedProperties"] = changedProperties
	}
	
	public func setMultiRequestToken(paramStr1: String) {
		self.dict["paramStr1"] = paramStr1
	}
	
	public func setMultiRequestToken(paramStr2: String) {
		self.dict["paramStr2"] = paramStr2
	}
	
	public func setMultiRequestToken(paramStr3: String) {
		self.dict["paramStr3"] = paramStr3
	}
	
	public func setMultiRequestToken(ks: String) {
		self.dict["ks"] = ks
	}
	
	public func setMultiRequestToken(description: String) {
		self.dict["description"] = description
	}
	
	public func setMultiRequestToken(createdAt: String) {
		self.dict["createdAt"] = createdAt
	}
	
	public func setMultiRequestToken(updatedAt: String) {
		self.dict["updatedAt"] = updatedAt
	}
	
	public func setMultiRequestToken(userIp: String) {
		self.dict["userIp"] = userIp
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = dict["id"] as? Int
		}
		if dict["trackEventType"] != nil {
			trackEventType = TrackEntryEventType(rawValue: (dict["trackEventType"] as? Int)!)
		}
		if dict["psVersion"] != nil {
			psVersion = dict["psVersion"] as? String
		}
		if dict["context"] != nil {
			context = dict["context"] as? String
		}
		if dict["partnerId"] != nil {
			partnerId = dict["partnerId"] as? Int
		}
		if dict["entryId"] != nil {
			entryId = dict["entryId"] as? String
		}
		if dict["hostName"] != nil {
			hostName = dict["hostName"] as? String
		}
		if dict["userId"] != nil {
			userId = dict["userId"] as? String
		}
		if dict["changedProperties"] != nil {
			changedProperties = dict["changedProperties"] as? String
		}
		if dict["paramStr1"] != nil {
			paramStr1 = dict["paramStr1"] as? String
		}
		if dict["paramStr2"] != nil {
			paramStr2 = dict["paramStr2"] as? String
		}
		if dict["paramStr3"] != nil {
			paramStr3 = dict["paramStr3"] as? String
		}
		if dict["ks"] != nil {
			ks = dict["ks"] as? String
		}
		if dict["description"] != nil {
			description = dict["description"] as? String
		}
		if dict["createdAt"] != nil {
			createdAt = dict["createdAt"] as? Int
		}
		if dict["updatedAt"] != nil {
			updatedAt = dict["updatedAt"] as? Int
		}
		if dict["userIp"] != nil {
			userIp = dict["userIp"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(id != nil) {
			dict["id"] = id!
		}
		if(trackEventType != nil) {
			dict["trackEventType"] = trackEventType!.rawValue
		}
		if(psVersion != nil) {
			dict["psVersion"] = psVersion!
		}
		if(context != nil) {
			dict["context"] = context!
		}
		if(partnerId != nil) {
			dict["partnerId"] = partnerId!
		}
		if(entryId != nil) {
			dict["entryId"] = entryId!
		}
		if(hostName != nil) {
			dict["hostName"] = hostName!
		}
		if(userId != nil) {
			dict["userId"] = userId!
		}
		if(changedProperties != nil) {
			dict["changedProperties"] = changedProperties!
		}
		if(paramStr1 != nil) {
			dict["paramStr1"] = paramStr1!
		}
		if(paramStr2 != nil) {
			dict["paramStr2"] = paramStr2!
		}
		if(paramStr3 != nil) {
			dict["paramStr3"] = paramStr3!
		}
		if(ks != nil) {
			dict["ks"] = ks!
		}
		if(description != nil) {
			dict["description"] = description!
		}
		if(createdAt != nil) {
			dict["createdAt"] = createdAt!
		}
		if(updatedAt != nil) {
			dict["updatedAt"] = updatedAt!
		}
		if(userIp != nil) {
			dict["userIp"] = userIp!
		}
		return dict
	}
}

