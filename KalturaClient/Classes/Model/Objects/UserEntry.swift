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

open class UserEntry: ObjectBase {

	/**  unique auto-generated identifier  */
	public var id: Int? = nil
	public var entryId: String? = nil
	public var userId: String? = nil
	public var partnerId: Int? = nil
	public var status: UserEntryStatus? = nil
	public var createdAt: Int? = nil
	public var updatedAt: Int? = nil
	public var type: UserEntryType? = nil
	public var extendedStatus: UserEntryExtendedStatus? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = dict["id"] as? Int
		}
		if dict["entryId"] != nil {
			entryId = dict["entryId"] as? String
		}
		if dict["userId"] != nil {
			userId = dict["userId"] as? String
		}
		if dict["partnerId"] != nil {
			partnerId = dict["partnerId"] as? Int
		}
		if dict["status"] != nil {
			status = UserEntryStatus(rawValue: "\(dict["status"]!)")
		}
		if dict["createdAt"] != nil {
			createdAt = dict["createdAt"] as? Int
		}
		if dict["updatedAt"] != nil {
			updatedAt = dict["updatedAt"] as? Int
		}
		if dict["type"] != nil {
			type = UserEntryType(rawValue: "\(dict["type"]!)")
		}
		if dict["extendedStatus"] != nil {
			extendedStatus = UserEntryExtendedStatus(rawValue: "\(dict["extendedStatus"]!)")
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(entryId != nil) {
			dict["entryId"] = entryId!
		}
		if(userId != nil) {
			dict["userId"] = userId!
		}
		if(extendedStatus != nil) {
			dict["extendedStatus"] = extendedStatus!.rawValue
		}
		return dict
	}
}

