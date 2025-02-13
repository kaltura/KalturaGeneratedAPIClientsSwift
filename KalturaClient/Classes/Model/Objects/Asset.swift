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

open class Asset: ObjectBase {

	public class AssetTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
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
		
		public var version: BaseTokenizedObject {
			get {
				return self.append("version") 
			}
		}
		
		public var size: BaseTokenizedObject {
			get {
				return self.append("size") 
			}
		}
		
		public var tags: BaseTokenizedObject {
			get {
				return self.append("tags") 
			}
		}
		
		public var fileExt: BaseTokenizedObject {
			get {
				return self.append("fileExt") 
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
		
		public var deletedAt: BaseTokenizedObject {
			get {
				return self.append("deletedAt") 
			}
		}
		
		public var description: BaseTokenizedObject {
			get {
				return self.append("description") 
			}
		}
		
		public var partnerData: BaseTokenizedObject {
			get {
				return self.append("partnerData") 
			}
		}
		
		public var partnerDescription: BaseTokenizedObject {
			get {
				return self.append("partnerDescription") 
			}
		}
		
		public var actualSourceAssetParamsIds: BaseTokenizedObject {
			get {
				return self.append("actualSourceAssetParamsIds") 
			}
		}
		
		public var sizeInBytes: BaseTokenizedObject {
			get {
				return self.append("sizeInBytes") 
			}
		}
	}

	/**  The ID of the Flavor Asset  */
	public var id: String? = nil
	/**  The entry ID of the Flavor Asset  */
	public var entryId: String? = nil
	public var partnerId: Int? = nil
	/**  The version of the Flavor Asset  */
	public var version: Int? = nil
	/**  The size (in KBytes) of the Flavor Asset  */
	public var size: Int? = nil
	/**  Tags used to identify the Flavor Asset in various scenarios  */
	public var tags: String? = nil
	/**  The file extension  */
	public var fileExt: String? = nil
	public var createdAt: Int? = nil
	public var updatedAt: Int? = nil
	public var deletedAt: Int? = nil
	/**  System description, error message, warnings and failure cause.  */
	public var description: String? = nil
	/**  Partner private data  */
	public var partnerData: String? = nil
	/**  Partner friendly description  */
	public var partnerDescription: String? = nil
	/**  Comma separated list of source flavor params ids  */
	public var actualSourceAssetParamsIds: String? = nil
	/**  The size (in Bytes) of the asset  */
	public var sizeInBytes: Int64? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(entryId: String) {
		self.dict["entryId"] = entryId
	}
	
	public func setMultiRequestToken(partnerId: String) {
		self.dict["partnerId"] = partnerId
	}
	
	public func setMultiRequestToken(version: String) {
		self.dict["version"] = version
	}
	
	public func setMultiRequestToken(size: String) {
		self.dict["size"] = size
	}
	
	public func setMultiRequestToken(tags: String) {
		self.dict["tags"] = tags
	}
	
	public func setMultiRequestToken(fileExt: String) {
		self.dict["fileExt"] = fileExt
	}
	
	public func setMultiRequestToken(createdAt: String) {
		self.dict["createdAt"] = createdAt
	}
	
	public func setMultiRequestToken(updatedAt: String) {
		self.dict["updatedAt"] = updatedAt
	}
	
	public func setMultiRequestToken(deletedAt: String) {
		self.dict["deletedAt"] = deletedAt
	}
	
	public func setMultiRequestToken(description: String) {
		self.dict["description"] = description
	}
	
	public func setMultiRequestToken(partnerData: String) {
		self.dict["partnerData"] = partnerData
	}
	
	public func setMultiRequestToken(partnerDescription: String) {
		self.dict["partnerDescription"] = partnerDescription
	}
	
	public func setMultiRequestToken(actualSourceAssetParamsIds: String) {
		self.dict["actualSourceAssetParamsIds"] = actualSourceAssetParamsIds
	}
	
	public func setMultiRequestToken(sizeInBytes: String) {
		self.dict["sizeInBytes"] = sizeInBytes
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = dict["id"] as? String
		}
		if dict["entryId"] != nil {
			entryId = dict["entryId"] as? String
		}
		if dict["partnerId"] != nil {
			partnerId = dict["partnerId"] as? Int
		}
		if dict["version"] != nil {
			version = dict["version"] as? Int
		}
		if dict["size"] != nil {
			size = dict["size"] as? Int
		}
		if dict["tags"] != nil {
			tags = dict["tags"] as? String
		}
		if dict["fileExt"] != nil {
			fileExt = dict["fileExt"] as? String
		}
		if dict["createdAt"] != nil {
			createdAt = dict["createdAt"] as? Int
		}
		if dict["updatedAt"] != nil {
			updatedAt = dict["updatedAt"] as? Int
		}
		if dict["deletedAt"] != nil {
			deletedAt = dict["deletedAt"] as? Int
		}
		if dict["description"] != nil {
			description = dict["description"] as? String
		}
		if dict["partnerData"] != nil {
			partnerData = dict["partnerData"] as? String
		}
		if dict["partnerDescription"] != nil {
			partnerDescription = dict["partnerDescription"] as? String
		}
		if dict["actualSourceAssetParamsIds"] != nil {
			actualSourceAssetParamsIds = dict["actualSourceAssetParamsIds"] as? String
		}
		if dict["sizeInBytes"] != nil {
			sizeInBytes = Int64("\(dict["sizeInBytes"]!)")
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(tags != nil) {
			dict["tags"] = tags!
		}
		if(fileExt != nil) {
			dict["fileExt"] = fileExt!
		}
		if(partnerData != nil) {
			dict["partnerData"] = partnerData!
		}
		if(partnerDescription != nil) {
			dict["partnerDescription"] = partnerDescription!
		}
		if(actualSourceAssetParamsIds != nil) {
			dict["actualSourceAssetParamsIds"] = actualSourceAssetParamsIds!
		}
		return dict
	}
}

