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

open class Beacon: ObjectBase {

	public class BeaconTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var indexType: BaseTokenizedObject {
			get {
				return self.append("indexType") 
			}
		}
		
		public var updatedAt: BaseTokenizedObject {
			get {
				return self.append("updatedAt") 
			}
		}
		
		public var relatedObjectType: BaseTokenizedObject {
			get {
				return self.append("relatedObjectType") 
			}
		}
		
		public var eventType: BaseTokenizedObject {
			get {
				return self.append("eventType") 
			}
		}
		
		public var objectId: BaseTokenizedObject {
			get {
				return self.append("objectId") 
			}
		}
		
		public var privateData: BaseTokenizedObject {
			get {
				return self.append("privateData") 
			}
		}
		
		public var rawData: BaseTokenizedObject {
			get {
				return self.append("rawData") 
			}
		}
	}

	/**  Beacon id  */
	public var id: String? = nil
	/**  Beacon indexType  */
	public var indexType: String? = nil
	/**  Beacon update date as Unix timestamp (In seconds)  */
	public var updatedAt: Int? = nil
	/**  The object which this beacon belongs to  */
	public var relatedObjectType: BeaconObjectTypes? = nil
	public var eventType: String? = nil
	public var objectId: String? = nil
	public var privateData: String? = nil
	public var rawData: String? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(indexType: String) {
		self.dict["indexType"] = indexType
	}
	
	public func setMultiRequestToken(updatedAt: String) {
		self.dict["updatedAt"] = updatedAt
	}
	
	public func setMultiRequestToken(relatedObjectType: String) {
		self.dict["relatedObjectType"] = relatedObjectType
	}
	
	public func setMultiRequestToken(eventType: String) {
		self.dict["eventType"] = eventType
	}
	
	public func setMultiRequestToken(objectId: String) {
		self.dict["objectId"] = objectId
	}
	
	public func setMultiRequestToken(privateData: String) {
		self.dict["privateData"] = privateData
	}
	
	public func setMultiRequestToken(rawData: String) {
		self.dict["rawData"] = rawData
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = dict["id"] as? String
		}
		if dict["indexType"] != nil {
			indexType = dict["indexType"] as? String
		}
		if dict["updatedAt"] != nil {
			updatedAt = dict["updatedAt"] as? Int
		}
		if dict["relatedObjectType"] != nil {
			relatedObjectType = BeaconObjectTypes(rawValue: "\(dict["relatedObjectType"]!)")
		}
		if dict["eventType"] != nil {
			eventType = dict["eventType"] as? String
		}
		if dict["objectId"] != nil {
			objectId = dict["objectId"] as? String
		}
		if dict["privateData"] != nil {
			privateData = dict["privateData"] as? String
		}
		if dict["rawData"] != nil {
			rawData = dict["rawData"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(relatedObjectType != nil) {
			dict["relatedObjectType"] = relatedObjectType!.rawValue
		}
		if(eventType != nil) {
			dict["eventType"] = eventType!
		}
		if(objectId != nil) {
			dict["objectId"] = objectId!
		}
		if(privateData != nil) {
			dict["privateData"] = privateData!
		}
		if(rawData != nil) {
			dict["rawData"] = rawData!
		}
		return dict
	}
}

