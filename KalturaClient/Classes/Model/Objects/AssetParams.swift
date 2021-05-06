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
// Copyright (C) 2006-2021  Kaltura Inc.
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

open class AssetParams: ObjectBase {

	public class AssetParamsTokenizer: ObjectBase.ObjectBaseTokenizer {
		
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
		
		public var isSystemDefault: BaseTokenizedObject {
			get {
				return self.append("isSystemDefault") 
			}
		}
		
		public var tags: BaseTokenizedObject {
			get {
				return self.append("tags") 
			}
		}
		
		public var requiredPermissions: ArrayTokenizedObject<StringHolder.StringHolderTokenizer> {
			get {
				return ArrayTokenizedObject<StringHolder.StringHolderTokenizer>(self.append("requiredPermissions"))
			} 
		}
		
		public var sourceRemoteStorageProfileId: BaseTokenizedObject {
			get {
				return self.append("sourceRemoteStorageProfileId") 
			}
		}
		
		public var remoteStorageProfileIds: BaseTokenizedObject {
			get {
				return self.append("remoteStorageProfileIds") 
			}
		}
		
		public var mediaParserType: BaseTokenizedObject {
			get {
				return self.append("mediaParserType") 
			}
		}
		
		public var sourceAssetParamsIds: BaseTokenizedObject {
			get {
				return self.append("sourceAssetParamsIds") 
			}
		}
	}

	/**  The id of the Flavor Params  */
	public var id: Int? = nil
	public var partnerId: Int? = nil
	/**  The name of the Flavor Params  */
	public var name: String? = nil
	/**  System name of the Flavor Params  */
	public var systemName: String? = nil
	/**  The description of the Flavor Params  */
	public var description: String? = nil
	/**  Creation date as Unix timestamp (In seconds)  */
	public var createdAt: Int? = nil
	/**  True if those Flavor Params are part of system defaults  */
	public var isSystemDefault: Bool? = nil
	/**  The Flavor Params tags are used to identify the flavor for different usage (e.g.
	  web, hd, mobile)  */
	public var tags: String? = nil
	/**  Array of partner permisison names that required for using this asset params  */
	public var requiredPermissions: Array<StringHolder>? = nil
	/**  Id of remote storage profile that used to get the source, zero indicates Kaltura
	  data center  */
	public var sourceRemoteStorageProfileId: Int? = nil
	/**  Comma seperated ids of remote storage profiles that the flavor distributed to,
	  the distribution done by the conversion engine  */
	public var remoteStorageProfileIds: Int? = nil
	/**  Media parser type to be used for post-conversion validation  */
	public var mediaParserType: MediaParserType? = nil
	/**  Comma seperated ids of source flavor params this flavor is created from  */
	public var sourceAssetParamsIds: String? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(partnerId: String) {
		self.dict["partnerId"] = partnerId
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
	
	public func setMultiRequestToken(isSystemDefault: String) {
		self.dict["isSystemDefault"] = isSystemDefault
	}
	
	public func setMultiRequestToken(tags: String) {
		self.dict["tags"] = tags
	}
	
	public func setMultiRequestToken(sourceRemoteStorageProfileId: String) {
		self.dict["sourceRemoteStorageProfileId"] = sourceRemoteStorageProfileId
	}
	
	public func setMultiRequestToken(remoteStorageProfileIds: String) {
		self.dict["remoteStorageProfileIds"] = remoteStorageProfileIds
	}
	
	public func setMultiRequestToken(mediaParserType: String) {
		self.dict["mediaParserType"] = mediaParserType
	}
	
	public func setMultiRequestToken(sourceAssetParamsIds: String) {
		self.dict["sourceAssetParamsIds"] = sourceAssetParamsIds
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = dict["id"] as? Int
		}
		if dict["partnerId"] != nil {
			partnerId = dict["partnerId"] as? Int
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
		if dict["isSystemDefault"] != nil {
			isSystemDefault = dict["isSystemDefault"] as? Bool
		}
		if dict["tags"] != nil {
			tags = dict["tags"] as? String
		}
		if dict["requiredPermissions"] != nil {
			requiredPermissions = try JSONParser.parse(array: dict["requiredPermissions"] as! [Any])
		}
		if dict["sourceRemoteStorageProfileId"] != nil {
			sourceRemoteStorageProfileId = dict["sourceRemoteStorageProfileId"] as? Int
		}
		if dict["remoteStorageProfileIds"] != nil {
			remoteStorageProfileIds = dict["remoteStorageProfileIds"] as? Int
		}
		if dict["mediaParserType"] != nil {
			mediaParserType = MediaParserType(rawValue: "\(dict["mediaParserType"]!)")
		}
		if dict["sourceAssetParamsIds"] != nil {
			sourceAssetParamsIds = dict["sourceAssetParamsIds"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(partnerId != nil) {
			dict["partnerId"] = partnerId!
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
		if(tags != nil) {
			dict["tags"] = tags!
		}
		if(requiredPermissions != nil) {
			dict["requiredPermissions"] = requiredPermissions!.map { value in value.toDictionary() }
		}
		if(sourceRemoteStorageProfileId != nil) {
			dict["sourceRemoteStorageProfileId"] = sourceRemoteStorageProfileId!
		}
		if(remoteStorageProfileIds != nil) {
			dict["remoteStorageProfileIds"] = remoteStorageProfileIds!
		}
		if(mediaParserType != nil) {
			dict["mediaParserType"] = mediaParserType!.rawValue
		}
		if(sourceAssetParamsIds != nil) {
			dict["sourceAssetParamsIds"] = sourceAssetParamsIds!
		}
		return dict
	}
}

