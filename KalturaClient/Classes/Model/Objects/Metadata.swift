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

open class Metadata: ObjectBase {

	public class MetadataTokenizer: ObjectBase.ObjectBaseTokenizer {
		
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
		
		public var metadataProfileId: BaseTokenizedObject {
			get {
				return self.append("metadataProfileId") 
			}
		}
		
		public var metadataProfileVersion: BaseTokenizedObject {
			get {
				return self.append("metadataProfileVersion") 
			}
		}
		
		public var metadataObjectType: BaseTokenizedObject {
			get {
				return self.append("metadataObjectType") 
			}
		}
		
		public var objectId: BaseTokenizedObject {
			get {
				return self.append("objectId") 
			}
		}
		
		public var version: BaseTokenizedObject {
			get {
				return self.append("version") 
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
		
		public var status: BaseTokenizedObject {
			get {
				return self.append("status") 
			}
		}
		
		public var xml: BaseTokenizedObject {
			get {
				return self.append("xml") 
			}
		}
	}

	public var id: Int? = nil
	public var partnerId: Int? = nil
	public var metadataProfileId: Int? = nil
	public var metadataProfileVersion: Int? = nil
	public var metadataObjectType: MetadataObjectType? = nil
	public var objectId: String? = nil
	public var version: Int? = nil
	public var createdAt: Int? = nil
	public var updatedAt: Int? = nil
	public var status: MetadataStatus? = nil
	public var xml: String? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(partnerId: String) {
		self.dict["partnerId"] = partnerId
	}
	
	public func setMultiRequestToken(metadataProfileId: String) {
		self.dict["metadataProfileId"] = metadataProfileId
	}
	
	public func setMultiRequestToken(metadataProfileVersion: String) {
		self.dict["metadataProfileVersion"] = metadataProfileVersion
	}
	
	public func setMultiRequestToken(metadataObjectType: String) {
		self.dict["metadataObjectType"] = metadataObjectType
	}
	
	public func setMultiRequestToken(objectId: String) {
		self.dict["objectId"] = objectId
	}
	
	public func setMultiRequestToken(version: String) {
		self.dict["version"] = version
	}
	
	public func setMultiRequestToken(createdAt: String) {
		self.dict["createdAt"] = createdAt
	}
	
	public func setMultiRequestToken(updatedAt: String) {
		self.dict["updatedAt"] = updatedAt
	}
	
	public func setMultiRequestToken(status: String) {
		self.dict["status"] = status
	}
	
	public func setMultiRequestToken(xml: String) {
		self.dict["xml"] = xml
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = dict["id"] as? Int
		}
		if dict["partnerId"] != nil {
			partnerId = dict["partnerId"] as? Int
		}
		if dict["metadataProfileId"] != nil {
			metadataProfileId = dict["metadataProfileId"] as? Int
		}
		if dict["metadataProfileVersion"] != nil {
			metadataProfileVersion = dict["metadataProfileVersion"] as? Int
		}
		if dict["metadataObjectType"] != nil {
			metadataObjectType = MetadataObjectType(rawValue: "\(dict["metadataObjectType"]!)")
		}
		if dict["objectId"] != nil {
			objectId = dict["objectId"] as? String
		}
		if dict["version"] != nil {
			version = dict["version"] as? Int
		}
		if dict["createdAt"] != nil {
			createdAt = dict["createdAt"] as? Int
		}
		if dict["updatedAt"] != nil {
			updatedAt = dict["updatedAt"] as? Int
		}
		if dict["status"] != nil {
			status = MetadataStatus(rawValue: (dict["status"] as? Int)!)
		}
		if dict["xml"] != nil {
			xml = dict["xml"] as? String
		}

	}

}

