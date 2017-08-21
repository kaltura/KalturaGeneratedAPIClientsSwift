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

open class StorageJobData: JobData {

	public var serverUrl: String? = nil
	public var serverUsername: String? = nil
	public var serverPassword: String? = nil
	public var serverPrivateKey: String? = nil
	public var serverPublicKey: String? = nil
	public var serverPassPhrase: String? = nil
	public var ftpPassiveMode: Bool? = nil
	public var srcFileSyncLocalPath: String? = nil
	public var srcFileSyncId: String? = nil
	public var destFileSyncStoredPath: String? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["serverUrl"] != nil {
			serverUrl = dict["serverUrl"] as? String
		}
		if dict["serverUsername"] != nil {
			serverUsername = dict["serverUsername"] as? String
		}
		if dict["serverPassword"] != nil {
			serverPassword = dict["serverPassword"] as? String
		}
		if dict["serverPrivateKey"] != nil {
			serverPrivateKey = dict["serverPrivateKey"] as? String
		}
		if dict["serverPublicKey"] != nil {
			serverPublicKey = dict["serverPublicKey"] as? String
		}
		if dict["serverPassPhrase"] != nil {
			serverPassPhrase = dict["serverPassPhrase"] as? String
		}
		if dict["ftpPassiveMode"] != nil {
			ftpPassiveMode = dict["ftpPassiveMode"] as? Bool
		}
		if dict["srcFileSyncLocalPath"] != nil {
			srcFileSyncLocalPath = dict["srcFileSyncLocalPath"] as? String
		}
		if dict["srcFileSyncId"] != nil {
			srcFileSyncId = dict["srcFileSyncId"] as? String
		}
		if dict["destFileSyncStoredPath"] != nil {
			destFileSyncStoredPath = dict["destFileSyncStoredPath"] as? String
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(serverUrl != nil) {
			dict["serverUrl"] = serverUrl!
		}
		if(serverUsername != nil) {
			dict["serverUsername"] = serverUsername!
		}
		if(serverPassword != nil) {
			dict["serverPassword"] = serverPassword!
		}
		if(serverPrivateKey != nil) {
			dict["serverPrivateKey"] = serverPrivateKey!
		}
		if(serverPublicKey != nil) {
			dict["serverPublicKey"] = serverPublicKey!
		}
		if(serverPassPhrase != nil) {
			dict["serverPassPhrase"] = serverPassPhrase!
		}
		if(ftpPassiveMode != nil) {
			dict["ftpPassiveMode"] = ftpPassiveMode!
		}
		if(srcFileSyncLocalPath != nil) {
			dict["srcFileSyncLocalPath"] = srcFileSyncLocalPath!
		}
		if(srcFileSyncId != nil) {
			dict["srcFileSyncId"] = srcFileSyncId!
		}
		if(destFileSyncStoredPath != nil) {
			dict["destFileSyncStoredPath"] = destFileSyncStoredPath!
		}
		return dict
	}
}

