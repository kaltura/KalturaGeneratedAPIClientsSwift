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
 * This class was generated using exec.php
 * against an XML schema provided by Kaltura.
 * 
 * MANUAL CHANGES TO THIS CLASS WILL BE OVERWRITTEN.
 */

open class GenericDistributionProfileAction: ObjectBase {

	public var protocol_: DistributionProtocol? = nil
	public var serverUrl: String? = nil
	public var serverPath: String? = nil
	public var username: String? = nil
	public var password: String? = nil
	public var ftpPassiveMode: Bool? = nil
	public var httpFieldName: String? = nil
	public var httpFileName: String? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["protocol"] != nil {
			protocol_ = DistributionProtocol(rawValue: (dict["protocol"] as? Int)!)
		}
		if dict["serverUrl"] != nil {
			serverUrl = dict["serverUrl"] as? String
		}
		if dict["serverPath"] != nil {
			serverPath = dict["serverPath"] as? String
		}
		if dict["username"] != nil {
			username = dict["username"] as? String
		}
		if dict["password"] != nil {
			password = dict["password"] as? String
		}
		if dict["ftpPassiveMode"] != nil {
			ftpPassiveMode = dict["ftpPassiveMode"] as? Bool
		}
		if dict["httpFieldName"] != nil {
			httpFieldName = dict["httpFieldName"] as? String
		}
		if dict["httpFileName"] != nil {
			httpFileName = dict["httpFileName"] as? String
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(protocol_ != nil) {
			dict["protocol"] = protocol_!.rawValue
		}
		if(serverUrl != nil) {
			dict["serverUrl"] = serverUrl!
		}
		if(serverPath != nil) {
			dict["serverPath"] = serverPath!
		}
		if(username != nil) {
			dict["username"] = username!
		}
		if(password != nil) {
			dict["password"] = password!
		}
		if(ftpPassiveMode != nil) {
			dict["ftpPassiveMode"] = ftpPassiveMode!
		}
		if(httpFieldName != nil) {
			dict["httpFieldName"] = httpFieldName!
		}
		if(httpFileName != nil) {
			dict["httpFileName"] = httpFileName!
		}
		return dict
	}
}

