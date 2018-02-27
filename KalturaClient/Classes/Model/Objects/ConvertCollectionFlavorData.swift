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
// Copyright (C) 2006-2018  Kaltura Inc.
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

open class ConvertCollectionFlavorData: ObjectBase {

	public class ConvertCollectionFlavorDataTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var flavorAssetId: BaseTokenizedObject {
			get {
				return self.append("flavorAssetId") 
			}
		}
		
		public var flavorParamsOutputId: BaseTokenizedObject {
			get {
				return self.append("flavorParamsOutputId") 
			}
		}
		
		public var readyBehavior: BaseTokenizedObject {
			get {
				return self.append("readyBehavior") 
			}
		}
		
		public var videoBitrate: BaseTokenizedObject {
			get {
				return self.append("videoBitrate") 
			}
		}
		
		public var audioBitrate: BaseTokenizedObject {
			get {
				return self.append("audioBitrate") 
			}
		}
		
		public var destFileSyncLocalPath: BaseTokenizedObject {
			get {
				return self.append("destFileSyncLocalPath") 
			}
		}
		
		public var destFileSyncRemoteUrl: BaseTokenizedObject {
			get {
				return self.append("destFileSyncRemoteUrl") 
			}
		}
	}

	public var flavorAssetId: String? = nil
	public var flavorParamsOutputId: Int? = nil
	public var readyBehavior: Int? = nil
	public var videoBitrate: Int? = nil
	public var audioBitrate: Int? = nil
	public var destFileSyncLocalPath: String? = nil
	public var destFileSyncRemoteUrl: String? = nil


	public func setMultiRequestToken(flavorAssetId: String) {
		self.dict["flavorAssetId"] = flavorAssetId
	}
	
	public func setMultiRequestToken(flavorParamsOutputId: String) {
		self.dict["flavorParamsOutputId"] = flavorParamsOutputId
	}
	
	public func setMultiRequestToken(readyBehavior: String) {
		self.dict["readyBehavior"] = readyBehavior
	}
	
	public func setMultiRequestToken(videoBitrate: String) {
		self.dict["videoBitrate"] = videoBitrate
	}
	
	public func setMultiRequestToken(audioBitrate: String) {
		self.dict["audioBitrate"] = audioBitrate
	}
	
	public func setMultiRequestToken(destFileSyncLocalPath: String) {
		self.dict["destFileSyncLocalPath"] = destFileSyncLocalPath
	}
	
	public func setMultiRequestToken(destFileSyncRemoteUrl: String) {
		self.dict["destFileSyncRemoteUrl"] = destFileSyncRemoteUrl
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["flavorAssetId"] != nil {
			flavorAssetId = dict["flavorAssetId"] as? String
		}
		if dict["flavorParamsOutputId"] != nil {
			flavorParamsOutputId = dict["flavorParamsOutputId"] as? Int
		}
		if dict["readyBehavior"] != nil {
			readyBehavior = dict["readyBehavior"] as? Int
		}
		if dict["videoBitrate"] != nil {
			videoBitrate = dict["videoBitrate"] as? Int
		}
		if dict["audioBitrate"] != nil {
			audioBitrate = dict["audioBitrate"] as? Int
		}
		if dict["destFileSyncLocalPath"] != nil {
			destFileSyncLocalPath = dict["destFileSyncLocalPath"] as? String
		}
		if dict["destFileSyncRemoteUrl"] != nil {
			destFileSyncRemoteUrl = dict["destFileSyncRemoteUrl"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(flavorAssetId != nil) {
			dict["flavorAssetId"] = flavorAssetId!
		}
		if(flavorParamsOutputId != nil) {
			dict["flavorParamsOutputId"] = flavorParamsOutputId!
		}
		if(readyBehavior != nil) {
			dict["readyBehavior"] = readyBehavior!
		}
		if(videoBitrate != nil) {
			dict["videoBitrate"] = videoBitrate!
		}
		if(audioBitrate != nil) {
			dict["audioBitrate"] = audioBitrate!
		}
		if(destFileSyncLocalPath != nil) {
			dict["destFileSyncLocalPath"] = destFileSyncLocalPath!
		}
		if(destFileSyncRemoteUrl != nil) {
			dict["destFileSyncRemoteUrl"] = destFileSyncRemoteUrl!
		}
		return dict
	}
}

