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

open class AppToken: ObjectBase {

	/**  The id of the application token  */
	public var id: String? = nil
	/**  The application token  */
	public var token: String? = nil
	public var partnerId: Int? = nil
	/**  Creation time as Unix timestamp (In seconds)  */
	public var createdAt: Int? = nil
	/**  Update time as Unix timestamp (In seconds)  */
	public var updatedAt: Int? = nil
	/**  Application token status  */
	public var status: AppTokenStatus? = nil
	/**  Expiry time of current token (unix timestamp in seconds)  */
	public var expiry: Int? = nil
	/**  Type of KS (Kaltura Session) that created using the current token  */
	public var sessionType: SessionType? = nil
	/**  User id of KS (Kaltura Session) that created using the current token  */
	public var sessionUserId: String? = nil
	/**  Expiry duration of KS (Kaltura Session) that created using the current token (in
	  seconds)  */
	public var sessionDuration: Int? = nil
	/**  Comma separated privileges to be applied on KS (Kaltura Session) that created
	  using the current token  */
	public var sessionPrivileges: String? = nil
	public var hashType: AppTokenHashType? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = dict["id"] as? String
		}
		if dict["token"] != nil {
			token = dict["token"] as? String
		}
		if dict["partnerId"] != nil {
			partnerId = dict["partnerId"] as? Int
		}
		if dict["createdAt"] != nil {
			createdAt = dict["createdAt"] as? Int
		}
		if dict["updatedAt"] != nil {
			updatedAt = dict["updatedAt"] as? Int
		}
		if dict["status"] != nil {
			status = AppTokenStatus(rawValue: (dict["status"] as? Int)!)
		}
		if dict["expiry"] != nil {
			expiry = dict["expiry"] as? Int
		}
		if dict["sessionType"] != nil {
			sessionType = SessionType(rawValue: (dict["sessionType"] as? Int)!)
		}
		if dict["sessionUserId"] != nil {
			sessionUserId = dict["sessionUserId"] as? String
		}
		if dict["sessionDuration"] != nil {
			sessionDuration = dict["sessionDuration"] as? Int
		}
		if dict["sessionPrivileges"] != nil {
			sessionPrivileges = dict["sessionPrivileges"] as? String
		}
		if dict["hashType"] != nil {
			hashType = AppTokenHashType(rawValue: "\(dict["hashType"]!)")
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(expiry != nil) {
			dict["expiry"] = expiry!
		}
		if(sessionType != nil) {
			dict["sessionType"] = sessionType!.rawValue
		}
		if(sessionUserId != nil) {
			dict["sessionUserId"] = sessionUserId!
		}
		if(sessionDuration != nil) {
			dict["sessionDuration"] = sessionDuration!
		}
		if(sessionPrivileges != nil) {
			dict["sessionPrivileges"] = sessionPrivileges!
		}
		if(hashType != nil) {
			dict["hashType"] = hashType!.rawValue
		}
		return dict
	}
}

