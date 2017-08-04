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

open class CEError: ObjectBase {

	public var id: String? = nil
	public var partnerId: Int? = nil
	public var browser: String? = nil
	public var serverIp: String? = nil
	public var serverOs: String? = nil
	public var phpVersion: String? = nil
	public var ceAdminEmail: String? = nil
	public var type: String? = nil
	public var description: String? = nil
	public var data: String? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = dict["id"] as? String
		}
		if dict["partnerId"] != nil {
			partnerId = dict["partnerId"] as? Int
		}
		if dict["browser"] != nil {
			browser = dict["browser"] as? String
		}
		if dict["serverIp"] != nil {
			serverIp = dict["serverIp"] as? String
		}
		if dict["serverOs"] != nil {
			serverOs = dict["serverOs"] as? String
		}
		if dict["phpVersion"] != nil {
			phpVersion = dict["phpVersion"] as? String
		}
		if dict["ceAdminEmail"] != nil {
			ceAdminEmail = dict["ceAdminEmail"] as? String
		}
		if dict["type"] != nil {
			type = dict["type"] as? String
		}
		if dict["description"] != nil {
			description = dict["description"] as? String
		}
		if dict["data"] != nil {
			data = dict["data"] as? String
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(partnerId != nil) {
			dict["partnerId"] = partnerId!
		}
		if(browser != nil) {
			dict["browser"] = browser!
		}
		if(serverIp != nil) {
			dict["serverIp"] = serverIp!
		}
		if(serverOs != nil) {
			dict["serverOs"] = serverOs!
		}
		if(phpVersion != nil) {
			dict["phpVersion"] = phpVersion!
		}
		if(ceAdminEmail != nil) {
			dict["ceAdminEmail"] = ceAdminEmail!
		}
		if(type != nil) {
			dict["type"] = type!
		}
		if(description != nil) {
			dict["description"] = description!
		}
		if(data != nil) {
			dict["data"] = data!
		}
		return dict
	}
}

