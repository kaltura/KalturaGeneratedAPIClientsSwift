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

open class ConvertJobData: ConvartableJobData {

	public class ConvertJobDataTokenizer: ConvartableJobData.ConvartableJobDataTokenizer {
		
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
		
		public var logFileSyncLocalPath: BaseTokenizedObject {
			get {
				return self.append("logFileSyncLocalPath") 
			}
		}
		
		public var logFileSyncRemoteUrl: BaseTokenizedObject {
			get {
				return self.append("logFileSyncRemoteUrl") 
			}
		}
		
		public var flavorAssetId: BaseTokenizedObject {
			get {
				return self.append("flavorAssetId") 
			}
		}
		
		public var remoteMediaId: BaseTokenizedObject {
			get {
				return self.append("remoteMediaId") 
			}
		}
		
		public var customData: BaseTokenizedObject {
			get {
				return self.append("customData") 
			}
		}
		
		public var extraDestFileSyncs: ArrayTokenizedObject<DestFileSyncDescriptor.DestFileSyncDescriptorTokenizer> {
			get {
				return ArrayTokenizedObject<DestFileSyncDescriptor.DestFileSyncDescriptorTokenizer>(self.append("extraDestFileSyncs"))
			} 
		}
		
		public var engineMessage: BaseTokenizedObject {
			get {
				return self.append("engineMessage") 
			}
		}
		
		public var destFileSyncSharedPath: BaseTokenizedObject {
			get {
				return self.append("destFileSyncSharedPath") 
			}
		}
		
		public var userCpu: BaseTokenizedObject {
			get {
				return self.append("userCpu") 
			}
		}
	}

	public var destFileSyncLocalPath: String? = nil
	public var destFileSyncRemoteUrl: String? = nil
	public var logFileSyncLocalPath: String? = nil
	public var logFileSyncRemoteUrl: String? = nil
	public var flavorAssetId: String? = nil
	public var remoteMediaId: String? = nil
	public var customData: String? = nil
	public var extraDestFileSyncs: Array<DestFileSyncDescriptor>? = nil
	public var engineMessage: String? = nil
	public var destFileSyncSharedPath: String? = nil
	public var userCpu: Int? = nil


	public func setMultiRequestToken(destFileSyncLocalPath: String) {
		self.dict["destFileSyncLocalPath"] = destFileSyncLocalPath
	}
	
	public func setMultiRequestToken(destFileSyncRemoteUrl: String) {
		self.dict["destFileSyncRemoteUrl"] = destFileSyncRemoteUrl
	}
	
	public func setMultiRequestToken(logFileSyncLocalPath: String) {
		self.dict["logFileSyncLocalPath"] = logFileSyncLocalPath
	}
	
	public func setMultiRequestToken(logFileSyncRemoteUrl: String) {
		self.dict["logFileSyncRemoteUrl"] = logFileSyncRemoteUrl
	}
	
	public func setMultiRequestToken(flavorAssetId: String) {
		self.dict["flavorAssetId"] = flavorAssetId
	}
	
	public func setMultiRequestToken(remoteMediaId: String) {
		self.dict["remoteMediaId"] = remoteMediaId
	}
	
	public func setMultiRequestToken(customData: String) {
		self.dict["customData"] = customData
	}
	
	public func setMultiRequestToken(engineMessage: String) {
		self.dict["engineMessage"] = engineMessage
	}
	
	public func setMultiRequestToken(destFileSyncSharedPath: String) {
		self.dict["destFileSyncSharedPath"] = destFileSyncSharedPath
	}
	
	public func setMultiRequestToken(userCpu: String) {
		self.dict["userCpu"] = userCpu
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["destFileSyncLocalPath"] != nil {
			destFileSyncLocalPath = dict["destFileSyncLocalPath"] as? String
		}
		if dict["destFileSyncRemoteUrl"] != nil {
			destFileSyncRemoteUrl = dict["destFileSyncRemoteUrl"] as? String
		}
		if dict["logFileSyncLocalPath"] != nil {
			logFileSyncLocalPath = dict["logFileSyncLocalPath"] as? String
		}
		if dict["logFileSyncRemoteUrl"] != nil {
			logFileSyncRemoteUrl = dict["logFileSyncRemoteUrl"] as? String
		}
		if dict["flavorAssetId"] != nil {
			flavorAssetId = dict["flavorAssetId"] as? String
		}
		if dict["remoteMediaId"] != nil {
			remoteMediaId = dict["remoteMediaId"] as? String
		}
		if dict["customData"] != nil {
			customData = dict["customData"] as? String
		}
		if dict["extraDestFileSyncs"] != nil {
			extraDestFileSyncs = try JSONParser.parse(array: dict["extraDestFileSyncs"] as! [Any])
		}
		if dict["engineMessage"] != nil {
			engineMessage = dict["engineMessage"] as? String
		}
		if dict["destFileSyncSharedPath"] != nil {
			destFileSyncSharedPath = dict["destFileSyncSharedPath"] as? String
		}
		if dict["userCpu"] != nil {
			userCpu = dict["userCpu"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(destFileSyncLocalPath != nil) {
			dict["destFileSyncLocalPath"] = destFileSyncLocalPath!
		}
		if(destFileSyncRemoteUrl != nil) {
			dict["destFileSyncRemoteUrl"] = destFileSyncRemoteUrl!
		}
		if(logFileSyncLocalPath != nil) {
			dict["logFileSyncLocalPath"] = logFileSyncLocalPath!
		}
		if(logFileSyncRemoteUrl != nil) {
			dict["logFileSyncRemoteUrl"] = logFileSyncRemoteUrl!
		}
		if(flavorAssetId != nil) {
			dict["flavorAssetId"] = flavorAssetId!
		}
		if(remoteMediaId != nil) {
			dict["remoteMediaId"] = remoteMediaId!
		}
		if(customData != nil) {
			dict["customData"] = customData!
		}
		if(extraDestFileSyncs != nil) {
			dict["extraDestFileSyncs"] = extraDestFileSyncs!.map { value in value.toDictionary() }
		}
		if(engineMessage != nil) {
			dict["engineMessage"] = engineMessage!
		}
		if(destFileSyncSharedPath != nil) {
			dict["destFileSyncSharedPath"] = destFileSyncSharedPath!
		}
		if(userCpu != nil) {
			dict["userCpu"] = userCpu!
		}
		return dict
	}
}

