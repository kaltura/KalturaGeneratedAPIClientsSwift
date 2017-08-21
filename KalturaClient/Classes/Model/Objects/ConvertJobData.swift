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

open class ConvertJobData: ConvartableJobData {

	public var destFileSyncLocalPath: String? = nil
	public var destFileSyncRemoteUrl: String? = nil
	public var logFileSyncLocalPath: String? = nil
	public var logFileSyncRemoteUrl: String? = nil
	public var flavorAssetId: String? = nil
	public var remoteMediaId: String? = nil
	public var customData: String? = nil
	public var extraDestFileSyncs: Array<DestFileSyncDescriptor>? = nil
	public var engineMessage: String? = nil


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

	}

	public override func toDictionary() -> [String: Any] {
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
		return dict
	}
}

