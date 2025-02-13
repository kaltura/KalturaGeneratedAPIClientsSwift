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

open class RecalculateResponseProfileCacheJobData: RecalculateCacheJobData {

	public class RecalculateResponseProfileCacheJobDataTokenizer: RecalculateCacheJobData.RecalculateCacheJobDataTokenizer {
		
		public var protocol_: BaseTokenizedObject {
			get {
				return self.append("protocol_") 
			}
		}
		
		public var ksType: BaseTokenizedObject {
			get {
				return self.append("ksType") 
			}
		}
		
		public var userRoles: ArrayTokenizedObject<IntegerValue.IntegerValueTokenizer> {
			get {
				return ArrayTokenizedObject<IntegerValue.IntegerValueTokenizer>(self.append("userRoles"))
			} 
		}
		
		public var cachedObjectType: BaseTokenizedObject {
			get {
				return self.append("cachedObjectType") 
			}
		}
		
		public var objectId: BaseTokenizedObject {
			get {
				return self.append("objectId") 
			}
		}
		
		public var startObjectKey: BaseTokenizedObject {
			get {
				return self.append("startObjectKey") 
			}
		}
		
		public var endObjectKey: BaseTokenizedObject {
			get {
				return self.append("endObjectKey") 
			}
		}
	}

	/**  http / https  */
	public var protocol_: String? = nil
	public var ksType: SessionType? = nil
	public var userRoles: Array<IntegerValue>? = nil
	/**  Class name  */
	public var cachedObjectType: String? = nil
	public var objectId: String? = nil
	public var startObjectKey: String? = nil
	public var endObjectKey: String? = nil


	public func setMultiRequestToken(protocol_: String) {
		self.dict["protocol"] = protocol_
	}
	
	public func setMultiRequestToken(ksType: String) {
		self.dict["ksType"] = ksType
	}
	
	public func setMultiRequestToken(cachedObjectType: String) {
		self.dict["cachedObjectType"] = cachedObjectType
	}
	
	public func setMultiRequestToken(objectId: String) {
		self.dict["objectId"] = objectId
	}
	
	public func setMultiRequestToken(startObjectKey: String) {
		self.dict["startObjectKey"] = startObjectKey
	}
	
	public func setMultiRequestToken(endObjectKey: String) {
		self.dict["endObjectKey"] = endObjectKey
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["protocol"] != nil {
			protocol_ = dict["protocol"] as? String
		}
		if dict["ksType"] != nil {
			ksType = SessionType(rawValue: (dict["ksType"] as? Int)!)
		}
		if dict["userRoles"] != nil {
			userRoles = try JSONParser.parse(array: dict["userRoles"] as! [Any])
		}
		if dict["cachedObjectType"] != nil {
			cachedObjectType = dict["cachedObjectType"] as? String
		}
		if dict["objectId"] != nil {
			objectId = dict["objectId"] as? String
		}
		if dict["startObjectKey"] != nil {
			startObjectKey = dict["startObjectKey"] as? String
		}
		if dict["endObjectKey"] != nil {
			endObjectKey = dict["endObjectKey"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(protocol_ != nil) {
			dict["protocol"] = protocol_!
		}
		if(ksType != nil) {
			dict["ksType"] = ksType!.rawValue
		}
		if(userRoles != nil) {
			dict["userRoles"] = userRoles!.map { value in value.toDictionary() }
		}
		if(cachedObjectType != nil) {
			dict["cachedObjectType"] = cachedObjectType!
		}
		if(objectId != nil) {
			dict["objectId"] = objectId!
		}
		if(startObjectKey != nil) {
			dict["startObjectKey"] = startObjectKey!
		}
		if(endObjectKey != nil) {
			dict["endObjectKey"] = endObjectKey!
		}
		return dict
	}
}

