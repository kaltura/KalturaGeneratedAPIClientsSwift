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

open class MetadataProfile: ObjectBase {

	public class MetadataProfileTokenizer: ObjectBase.ObjectBaseTokenizer {
		
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
		
		public var metadataObjectType: BaseTokenizedObject {
			get {
				return self.append("metadataObjectType") 
			}
		}
		
		public var version: BaseTokenizedObject {
			get {
				return self.append("version") 
			}
		}
		
		public var name: BaseTokenizedObject {
			get {
				return self.append("name") 
			}
		}
		
		public var systemName: BaseTokenizedObject {
			get {
				return self.append("systemName") 
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
		
		public var status: BaseTokenizedObject {
			get {
				return self.append("status") 
			}
		}
		
		public var xsd: BaseTokenizedObject {
			get {
				return self.append("xsd") 
			}
		}
		
		public var views: BaseTokenizedObject {
			get {
				return self.append("views") 
			}
		}
		
		public var xslt: BaseTokenizedObject {
			get {
				return self.append("xslt") 
			}
		}
		
		public var createMode: BaseTokenizedObject {
			get {
				return self.append("createMode") 
			}
		}
		
		public var disableReIndexing: BaseTokenizedObject {
			get {
				return self.append("disableReIndexing") 
			}
		}
	}

	public var id: Int? = nil
	public var partnerId: Int? = nil
	public var metadataObjectType: MetadataObjectType? = nil
	public var version: Int? = nil
	public var name: String? = nil
	public var systemName: String? = nil
	public var description: String? = nil
	public var createdAt: Int? = nil
	public var updatedAt: Int? = nil
	public var status: MetadataProfileStatus? = nil
	public var xsd: String? = nil
	public var views: String? = nil
	public var xslt: String? = nil
	public var createMode: MetadataProfileCreateMode? = nil
	public var disableReIndexing: Bool? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(partnerId: String) {
		self.dict["partnerId"] = partnerId
	}
	
	public func setMultiRequestToken(metadataObjectType: String) {
		self.dict["metadataObjectType"] = metadataObjectType
	}
	
	public func setMultiRequestToken(version: String) {
		self.dict["version"] = version
	}
	
	public func setMultiRequestToken(name: String) {
		self.dict["name"] = name
	}
	
	public func setMultiRequestToken(systemName: String) {
		self.dict["systemName"] = systemName
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
	
	public func setMultiRequestToken(status: String) {
		self.dict["status"] = status
	}
	
	public func setMultiRequestToken(xsd: String) {
		self.dict["xsd"] = xsd
	}
	
	public func setMultiRequestToken(views: String) {
		self.dict["views"] = views
	}
	
	public func setMultiRequestToken(xslt: String) {
		self.dict["xslt"] = xslt
	}
	
	public func setMultiRequestToken(createMode: String) {
		self.dict["createMode"] = createMode
	}
	
	public func setMultiRequestToken(disableReIndexing: String) {
		self.dict["disableReIndexing"] = disableReIndexing
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
		if dict["metadataObjectType"] != nil {
			metadataObjectType = MetadataObjectType(rawValue: "\(dict["metadataObjectType"]!)")
		}
		if dict["version"] != nil {
			version = dict["version"] as? Int
		}
		if dict["name"] != nil {
			name = dict["name"] as? String
		}
		if dict["systemName"] != nil {
			systemName = dict["systemName"] as? String
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
		if dict["status"] != nil {
			status = MetadataProfileStatus(rawValue: (dict["status"] as? Int)!)
		}
		if dict["xsd"] != nil {
			xsd = dict["xsd"] as? String
		}
		if dict["views"] != nil {
			views = dict["views"] as? String
		}
		if dict["xslt"] != nil {
			xslt = dict["xslt"] as? String
		}
		if dict["createMode"] != nil {
			createMode = MetadataProfileCreateMode(rawValue: (dict["createMode"] as? Int)!)
		}
		if dict["disableReIndexing"] != nil {
			disableReIndexing = dict["disableReIndexing"] as? Bool
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(metadataObjectType != nil) {
			dict["metadataObjectType"] = metadataObjectType!.rawValue
		}
		if(name != nil) {
			dict["name"] = name!
		}
		if(systemName != nil) {
			dict["systemName"] = systemName!
		}
		if(description != nil) {
			dict["description"] = description!
		}
		if(createMode != nil) {
			dict["createMode"] = createMode!.rawValue
		}
		if(disableReIndexing != nil) {
			dict["disableReIndexing"] = disableReIndexing!
		}
		return dict
	}
}

