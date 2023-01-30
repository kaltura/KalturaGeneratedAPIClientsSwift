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

open class ResponseProfileCacheRecalculateOptions: ObjectBase {

	public class ResponseProfileCacheRecalculateOptionsTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var limit: BaseTokenizedObject {
			get {
				return self.append("limit") 
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
		
		public var jobCreatedAt: BaseTokenizedObject {
			get {
				return self.append("jobCreatedAt") 
			}
		}
		
		public var isFirstLoop: BaseTokenizedObject {
			get {
				return self.append("isFirstLoop") 
			}
		}
	}

	/**  Maximum number of keys to recalculate  */
	public var limit: Int? = nil
	/**  Class name  */
	public var cachedObjectType: String? = nil
	public var objectId: String? = nil
	public var startObjectKey: String? = nil
	public var endObjectKey: String? = nil
	public var jobCreatedAt: Int? = nil
	public var isFirstLoop: Bool? = nil


	public func setMultiRequestToken(limit: String) {
		self.dict["limit"] = limit
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
	
	public func setMultiRequestToken(jobCreatedAt: String) {
		self.dict["jobCreatedAt"] = jobCreatedAt
	}
	
	public func setMultiRequestToken(isFirstLoop: String) {
		self.dict["isFirstLoop"] = isFirstLoop
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["limit"] != nil {
			limit = dict["limit"] as? Int
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
		if dict["jobCreatedAt"] != nil {
			jobCreatedAt = dict["jobCreatedAt"] as? Int
		}
		if dict["isFirstLoop"] != nil {
			isFirstLoop = dict["isFirstLoop"] as? Bool
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(limit != nil) {
			dict["limit"] = limit!
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
		if(jobCreatedAt != nil) {
			dict["jobCreatedAt"] = jobCreatedAt!
		}
		if(isFirstLoop != nil) {
			dict["isFirstLoop"] = isFirstLoop!
		}
		return dict
	}
}

